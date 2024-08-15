#!/bin/bash

#colours
BLUE='\033[0;34m'
GREEN='\033[0;32m'
RED='\033[0;31m'
PURPLE='\033[0;35m'
RESET='\033[0m'  # No color

#display menu
display_menu() {
    echo "Select operation:"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
}

#calculations
perform_calculation() {
    local operation=$1
    local num1=$2
    local num2=$3

    case $operation in
        1)
            result=$((num1 + num2))
            echo -e "${BLUE}Result: $num1 + $num2 = $result${RESET}"
            ;;
        2)
            result=$((num1 - num2))
            echo -e "${GREEN}Result: $num1 - $num2 = $result${RESET}"
            ;;
        3)
            result=$((num1 * num2))
            echo -e "${RED}Result: $num1 * $num2 = $result${RESET}"
            ;;
        4)
            if [ $num2 -ne 0 ]; then
                result=$((num1 / num2))
                echo -e "${PURPLE}Result: $num1 / $num2 = $result${RESET}"
            else
                echo -e "${PURPLE}Error: Division by zero is not allowed.${RESET}"
            fi
            ;;
        *)
            echo "Invalid operation"
            ;;
    esac
}

#main script
while true; do
    display_menu
    read -p "Enter your choice (1-4): " operation

    if [[ $operation =~ ^[1-4]$ ]]; then
        read -p "Enter the first number: " num1
        read -p "Enter the second number: " num2
        
        if [[ $num1 =~ ^-?[0-9]+$ ]] && [[ $num2 =~ ^-?[0-9]+$ ]]; then
            perform_calculation $operation $num1 $num2
        else
            echo "Please enter valid integers."
        fi
    else
        echo "Please select a valid operation (1-4)."
    fi

    read -p "Do you want to perform another calculation? (y/n): " choice
    if [[ $choice != [yY] ]]; then
        break
    fi
done

echo "Goodbye!"
