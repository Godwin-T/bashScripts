#!/bin/bash

# Check if a directory path is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <absolute-directory-path>"
    exit 1
fi

# Check if the directory exists
if [ ! -d "$1" ]; then
    echo "Directory '$1' does not exist."
    exit 1
fi

# Count and print number of files (not directories) in the directory
file_count=$(find "$1" -maxdepth 1 -type f | wc -l)
echo "Number of files in '$1': $file_count"

