import os
import subprocess
import re

def strip_ansi_escape_sequences(line):
    """
    Removes ANSI escape sequences from a string.
    """
    return re.sub(r'\x1b\[[0-9;]*[A-Za-z]', '', line)

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
                    unknown_definitions.append(f"{unknown_identifier}: EQU 0x0000\n")
                    print(f"Captured unknown identifier: {unknown_identifier}")

                # Handle "Unknown label, invalid number"
                match_label = re.search(r"Unknown label, invalid number '(.+?)'", clean_line)
                if match_label:
                    label = match_label.group(1).strip("()")  # Remove parentheses
                    unknown_definitions.append(f"{label}: EQU 0x0000\n")
                    print(f"Captured unknown label: {label}")

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
assemble_and_handle_errors("ez80asm/orig", "agon_init.asm")
