#!/bin/bash
./passwordCheck.sh
if [ $? -eq 0 ]; then
    echo "Password verification successful."
    
    while true; do
        echo "Select an option:"
        echo "1. Create a folder"
        echo "2. Copy a folder"
        echo "3. Set a password"
        
        read -p "Enter your choice: " choice
        
        case $choice in
            1)
                echo "You chose to create a folder."
                ./foldermaker.sh
                ;;
            2)
                echo "You chose to copy a folder."
                ./foldercopier.sh
                ;;
            3)
                echo "You chose to set a password."
                ./setPassword.sh
                ;;
            4)
                echo "Exiting..."
                exit 0
                ;;
            *)
                echo "Invalid option, please try again."
                ;;
        esac
    done
else
    echo "Password verification failed. Exiting..."
    exit 1
fi

