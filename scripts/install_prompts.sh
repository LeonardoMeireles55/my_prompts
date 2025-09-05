#!/usr/bin/env bash

# Script to install prompts to VS Code user prompts directory
# Works on Linux and Mac

set -euo pipefail

OS_NAME=$(uname -s)

case "$OS_NAME" in
    Darwin*)
        # macOS
        DEST_DIR="$HOME/Library/Application Support/Code/User/prompts"
        ;;
    Linux*)
        # Linux
        DEST_DIR="$HOME/.config/Code/User/prompts"
        ;;
    *)
        echo "Unsupported operating system: $OS_NAME"
        exit 1
        ;;
esac

echo "Installing prompts to: $DEST_DIR"

mkdir -p "$DEST_DIR"

TOTAL_FILES=$(find ./reusable_prompts -name "*.prompt.md" | wc -l)
echo "Found $TOTAL_FILES prompt files to install"

echo "Copying prompt files..."
COPY_COUNT=0
for file in ./reusable_prompts/**/*.prompt.md; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        dest_file="$DEST_DIR/$filename"

            cp "$file" "$dest_file"
            echo "Installed: $filename"
            COPY_COUNT=$((COPY_COUNT + 1))
    fi
done

echo "Installation complete!"
echo "Successfully installed $COPY_COUNT prompt files to $DEST_DIR"
