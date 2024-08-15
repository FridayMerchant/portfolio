#!/bin/bash

#sed statements
echo "Searching for all sed statements..."
grep -r "sed " *

#lines that start with the letter m
echo "Searching for all lines that start with the letter m..."
grep -r "^m" *

#lines that contain three digit numbers
echo "Searching for all lines that contain three digit numbers..."
grep -r "[0-9]\{3\}" *

#echo statements with at least three words
echo "Searching for all echo statements with at least three words..."
grep -r "echo \(\w\+\s\+\)\{2,\}\w\+" *

#lines that would make a good password
echo "Searching for all lines that would make a good password..."
grep -r "^[[:alnum:]]\{8,\}$" *
