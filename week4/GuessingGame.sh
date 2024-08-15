#!/bin/bash

#users numbers input
getNumber() {
    local number
    read -p "Enter a number between 1 and 100: " number
    echo $number
}

#main script
target=42
guess=0

while [ $guess -ne $target ]; do
    guess=$(getNumber)

    if [ $guess -lt $target ]; then
        echo "Too Low!"
    elif [ $guess -gt $target ]; then
        echo "Too High!"
    else
        echo "Correct!"
    fi
done
