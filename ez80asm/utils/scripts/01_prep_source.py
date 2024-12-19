import os
import re

# Path to the folder containing the files
input_folder = 'ez80asm/orig'

# Patterns to identify lines to comment out
patterns = [
    r'^\s*SEGMENT CODE',
    r'^\s*SEGMENT DATA',
    r'^\s*END',
    r'^\s*XDEF',
    r'^\s*XREF'
]

# Compile regex patterns for efficiency
compiled_patterns = [re.compile(pattern) for pattern in patterns]

# Process each file in the folder
for filename in os.listdir(input_folder):
    file_path = os.path.join(input_folder, filename)

    # Skip non-file entries
    if not os.path.isfile(file_path):
        continue

    with open(file_path, 'r') as file:
        lines = file.readlines()

    modified_lines = []

    for line in lines:
        stripped_line = line.lstrip()
        if stripped_line.startswith(';'):
            # Ignore lines that are already commented out
            modified_lines.append(line)
            continue

        # Check if the line matches any pattern
        if any(pattern.match(stripped_line) for pattern in compiled_patterns):
            modified_lines.append(';' + line)  # Comment out the line
        else:
            modified_lines.append(line)

    # Write the modified lines back to the file
    with open(file_path, 'w') as file:
        file.writelines(modified_lines)

print("Files processed and lines commented as specified.")
