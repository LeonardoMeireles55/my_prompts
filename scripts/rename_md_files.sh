#!/bin/bash

# Script to rename .md files to .prompt.md
# Runs only in the current directory

echo "Renaming .md files to .prompt.md in the current directory..."

# Counter to show progress
count=0

# Loop over all .md files in the current directory (non-recursive)
for file in *.md; do
    # Check if the file exists (avoids error when there are no .md files)
    if [ -f "$file" ]; then
        # Check if the file already ends with .prompt.md
        if [[ "$file" == *.prompt.md ]]; then
            echo "Skipping '$file' - already has the correct suffix"
        else
            # Remove the .md extension and add .prompt.md
            new_name="${file%.md}.prompt.md"

            # Rename the file
            mv "$file" "$new_name"
            echo "Renamed: '$file' -> '$new_name'"
            ((count++))
        fi
    fi
done

# Check if no .md files were found
if [ $count -eq 0 ]; then
    echo "No .md files found to rename in the current directory."
else
    echo "Done! $count file(s) renamed."
fi
