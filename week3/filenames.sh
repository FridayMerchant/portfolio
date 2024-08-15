#!/bin/bash

#Check input file
if [ $# -ne 1 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

input_file=$1

#Checkinput file
if [ ! -f "$input_file" ]; then
    echo "File $input_file does not exist."
    exit 1
fi

#read the file line by line
while IFS= read -r line
do
    #trim space
    line=$(echo "$line" | xargs)
    
    #skip empty lines
    if [ -z "$line" ]; then
        continue
    fi

    echo "Checking: $line"

    #check if it is a directory
    if [ -d "$line" ]; then
        echo "$line is a directory"
    #check if it is a file
    elif [ -f "$line" ]; then
        echo "$line is a file"
    else
        echo "$line is not a file or directory"
    fi
done < "$input_file"
