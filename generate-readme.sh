#!/bin/bash

output_file="README.md"

# Start the README.md file
echo "# Image Gallery" > "$output_file"
echo "" >> "$output_file"

# Loop through all image files and add them to README.md
for img in *.{jpg,png,jpeg,gif,bmp,tiff}; do
    if [ -f "$img" ]; then
        echo "![${img}](./${img})" >> "$output_file"
    fi
done

echo "README.md has been created with all the images."

