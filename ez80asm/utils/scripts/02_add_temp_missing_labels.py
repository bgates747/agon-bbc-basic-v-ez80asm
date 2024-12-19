import os
import subprocess
import re

def strip_ansi_escape_sequences(line):
    """
    Removes ANSI escape sequences from a string.
    """
    return re.sub(r'\x1b\[[0-9;]*[A-Za-z]', '', line)

def fix_invalid_literal(src_asm_file, line_number):
    """
    Fixes invalid literals in the source assembly file by replacing single-quoted
    strings with double-quoted strings on the specified line number.

    Args:
        src_asm_file (str): Path to the source assembly file.
        line_number (int): The line number to modify.
    """
    with open(src_asm_file, "r") as f:
        lines = f.readlines()

    # Find and replace invalid literal format
    if 0 <= line_number - 1 < len(lines):
        line = lines[line_number - 1]
        # Special handling for triple single quotes
        if "'''" in line:
            modified_line = line.replace("'''", '"\'"')
        else:
            modified_line = re.sub(r"'(.*?)'", r'"\1"', line)
        lines[line_number - 1] = modified_line
        print(f"Fixed line {line_number}: {line.strip()} -> {modified_line.strip()}")

    with open(src_asm_file, "w") as f:
        f.writelines(lines)

def assemble_and_handle_errors(src_dir, src_asm_file):
    """
    Assembles a given assembly file and handles errors by creating .inc files
    to define unknown identifiers or labels with default values.

    Args:
        src_dir (str): Directory containing the source files.
        src_asm_file (str): Name of the source assembly file to assemble.
    """
    # Change to source directory
    original_dir = os.getcwd()
    os.chdir(src_dir)

    unknown_definitions = []
    inc_file = f"{os.path.splitext(src_asm_file)[0]}.inc"

    try:
        # Dynamically generate the output path based on the source file name
        bin_file = f"../utils/bin/{os.path.splitext(src_asm_file)[0]}.bin"

        # Run the assembler command
        output = subprocess.run(
            ["ez80asm", src_asm_file, bin_file],
            text=True,
            capture_output=True
        )

        # Debug output for captured stdout/stderr
        print("Captured output:")
        for line in output.stdout.splitlines():
            print(f"DEBUG RAW LINE: {repr(line)}")  # Print raw line with repr

        # Check for errors in the output
        if output.returncode != 0:
            error_lines = output.stdout.splitlines()
            for line in error_lines:
                clean_line = strip_ansi_escape_sequences(line.strip())  # Clean escape codes
                print(f"DEBUG CLEAN LINE: {repr(clean_line)}")  # Debug cleaned line

                # Handle "Unknown identifier"
                match_unknown = re.search(r"Unknown identifier '(.+?)'", clean_line)
                if match_unknown:
                    unknown_identifier = match_unknown.group(1)
                    unknown_definitions.append(f"{unknown_identifier}: EQU 0\n")
                    print(f"Captured unknown identifier: {unknown_identifier}")

                # Handle "Unknown label, invalid number"
                match_label = re.search(r"Unknown label, invalid number '(.+?)'", clean_line)
                if match_label:
                    label = match_label.group(1).strip("()")  # Remove parentheses
                    unknown_definitions.append(f"{label}: EQU 0\n")
                    print(f"Captured unknown label: {label}")

                # Handle "Invalid literal format"
                match_invalid_literal = re.search(r'File "(.+?)" line (\d+) - Invalid literal format', clean_line)
                if match_invalid_literal:
                    file_path, line_number = match_invalid_literal.groups()
                    print(f"Invalid literal format at {file_path}, line {line_number}")
                    fix_invalid_literal(src_asm_file, int(line_number))

                # Handle "Illegal escape sequence in literal"
                match_illegal_escape = re.search(r'File "(.+?)" line (\d+) - Illegal escape sequence in literal', clean_line)
                if match_illegal_escape:
                    file_path, line_number = match_illegal_escape.groups()
                    print(f"Illegal escape sequence in literal at {file_path}, line {line_number}")
                    fix_invalid_literal(src_asm_file, int(line_number))

        # Print assembler output
        print(output.stdout)

    finally:
        # Write to .inc file outside of try block
        with open(inc_file, "a") as f:
            if unknown_definitions:
                for definition in unknown_definitions:
                    f.write(definition)
                    print(f"Wrote to {inc_file}: {definition.strip()}")

        # Change back to original directory
        os.chdir(original_dir)

# Example usage:
assemble_and_handle_errors("ez80asm/orig", "exec.asm")
