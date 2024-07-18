#!/bin/bash
# This asks the user to type the secret password that will hide input
echo -n "Enter your secret password: "
read -s userInput  # The `-s` flag hides the user input
echo  # This just moves to a new line after user input
# This will read the stored password hash from 'secret.txt'
storedPasswordHash=$(cat secret.txt)
# This calculates the SHA-256 hash of the user input password
userPasswordHash=$(echo -n "$userInput" | sha256sum | cut -d ' ' -f1)

# This will check if the calculated hash matches the stored hash
if [ "$userPasswordHash" = "$storedPasswordHash" ]; then
    echo "Access Granted"
    exit 0  # Exit with code 0 indicating success
else
    echo "Access Denied"
    exit 1  # Exit with code 1 indicating failure
fi
