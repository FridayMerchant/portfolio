#!/bin/bash

# Check if the input file is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

input_file=$1

# Check if the input file exists
if [ ! -f "$input_file" ]; then
    echo "File $input_file does not exist."
    exit 1
fi

# Read the file line by line
while IFS= read -r line
do
    # Trim leading and trailing whitespace
    line=$(echo "$line" | xargs)
    
    # Skip empty lines
    if [ -z "$line" ]; then
        continue
    fi

    echo "Checking: $line"

    # Check if it is a directory
    if [ -d "$line" ]; then
        echo "$line is a directory"
    # Check if it is a file
    elif [ -f "$line" ]; then
        echo "$line is a file"
    else
        echo "$line is not a file or directory"
    fi
done < "$input_file"
