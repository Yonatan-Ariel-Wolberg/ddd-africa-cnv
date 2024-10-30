#!/usr/bin/bash

# Check if exactly one argument is provided
if [ $# != 1]; then
    echo "Usage: ./compress.sh <[directory/]file_pattern>"
    exit 1
fi

# Extract directory and file pattern from argument
input="$1"
if [[ "$input" == */* ]]; then
    directory=$(dirname "$input")
    file_pattern=$(basename "$input")
else
    directory="."
    file_pattern="$input"
fi

# Check if directory exists
if  [ ! -d "$directory" ]; then
    echo "Directory $directory does not exist"
    exit 1
fi

# Loop through files matching pattern in a specified directory
find "$directory" -type f -name "$file_pattern" | while IFS= read -r file; do
    if [ -f "$file" ]; then
        bgzip -c "$file" > "$file.gz"
    else
        echo "File $file does not exist"
    fi
done