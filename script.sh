#!/bin/bash

# Loop over all files in the current directory
for file in *; do
    # Ensure we're only working with regular files
    if [ -f "$file" ]; then
        # Get the file name without the extension
        file_name="${file%.*}"
        # Create a directory with the file name
        mkdir "$file_name"
        # Move the file into the directory
        mv "$file" "$file_name"
    fi
done

