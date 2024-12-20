import os

def comment_include_lines(src_dir):
    """
    In every .asm file in the source directory, finds the line containing
    'include "foo.inc"' where 'foo' matches the base name of the file, and
    comments out the line by adding a semicolon as the first character.

    Args:
        src_dir (str): Directory containing the .asm files.
    """
    for filename in os.listdir(src_dir):
        if filename.endswith(".asm"):
            file_path = os.path.join(src_dir, filename)
            base_name = os.path.splitext(filename)[0]

            with open(file_path, "r") as file:
                lines = file.readlines()

            modified = False
            updated_lines = []

            for line in lines:
                if f'include "{base_name}.inc"' in line:
                    updated_lines.append(f';{line}')
                    modified = True
                else:
                    updated_lines.append(line)

            if modified:
                with open(file_path, "w") as file:
                    file.writelines(updated_lines)
                print(f"Modified file: {filename}")

# Example usage:
# comment_include_lines("ez80asm/orig")

import os

def comment_org_lines(src_dir):
    """
    In every .asm file in the source directory, comments out lines
    containing '.ORG 0x0000' by adding a semicolon as the first character.

    Args:
        src_dir (str): Directory containing the .asm files.
    """
    for filename in os.listdir(src_dir):
        if filename.endswith(".asm"):
            file_path = os.path.join(src_dir, filename)

            with open(file_path, "r") as file:
                lines = file.readlines()

            modified = False
            updated_lines = []

            for line in lines:
                if "\t.ORG 0x0000" in line:
                    updated_lines.append(f";{line}")
                    modified = True
                else:
                    updated_lines.append(line)

            if modified:
                with open(file_path, "w") as file:
                    file.writelines(updated_lines)
                print(f"Modified file: {filename}")

# Example usage:
comment_org_lines("ez80asm/orig")

