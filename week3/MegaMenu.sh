#!/bin/bash

# Define color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
RESET='\033[0m' # Reset to default color

# Function to print headers
print_header() {
    echo -e "${BLUE}$1${RESET}"
}

# Function to print menu options
print_menu() {
    print_header "Select an option:"
    echo -e "${YELLOW}1. Create a folder${RESET}"
    echo -e "${YELLOW}2. Copy a folder${RESET}"
    echo -e "${YELLOW}3. Set a password${RESET}"
    echo -e "${YELLOW}4. Run Calculator${RESET}"
    echo -e "${YELLOW}5. Check Filenames${RESET}"
    echo -e "${YELLOW}6. Create Weekly Folders${RESET}"
    echo -e "${YELLOW}7. Web Downloader${RESET}"
    echo -e "${RED}8. Exit${RESET}"
}

# Verify password
./passwordCheck.sh
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Password verification successful.${RESET}"

    while true; do
        print_menu
        read -p "Enter your choice: " choice
        
        case $choice in
            1)
                echo -e "${BLUE}You chose to create a folder.${RESET}"
                ./foldermaker.sh
                ;;
            2)
                echo -e "${BLUE}You chose to copy a folder.${RESET}"
                ./foldercopier.sh
                ;;
            3)
                echo -e "${BLUE}You chose to set a password.${RESET}"
                ./setPassword.sh
                ;;
            4)
                echo -e "${BLUE}You chose to run the calculator.${RESET}"
                ./calculator.sh
                ;;
            5)
                echo -e "${BLUE}You chose to check filenames.${RESET}"
                ./filenames.sh filenames.txt
                ;;
            6)
                echo -e "${BLUE}You chose to create weekly folders.${RESET}"
                ./megafoldermaker.sh 4 6  # Example arguments, modify as needed
                ;;
            7)
                echo -e "${BLUE}You chose to run the web downloader.${RESET}"
                ./webdownloader.sh
                ;;
            8)
                echo -e "${RED}Exiting...${RESET}"
                exit 0
                ;;
            *)
                echo -e "${RED}Invalid option, please try again.${RESET}"
                ;;
        esac
    done
else
    echo -e "${RED}Password verification failed. Exiting...${RESET}"
    exit 1
fi
