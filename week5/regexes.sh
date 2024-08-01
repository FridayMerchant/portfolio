#!/bin/bash

# all sed statements
echo "Searching for all sed statements..."
grep -r "sed " *

# all lines that start with the letter m
echo "Searching for all lines that start with the letter m..."
grep -r "^m" *

# all lines that contain three digit numbers
echo "Searching for all lines that contain three digit numbers..."
grep -r "[0-9]\{3\}" *

# all echo statements with at least three words
echo "Searching for all echo statements with at least three words..."
grep -r "echo \(\w\+\s\+\)\{2,\}\w\+" *

# all lines that would make a good password
echo "Searching for all lines that would make a good password..."
grep -r "^[[:alnum:]]\{8,\}$" *
