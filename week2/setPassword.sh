#!/bin/bash
# This will ask the user to type a folder name
read -p "Enter folder name: " folderName
# This will create the folder if it doesn't exist
mkdir -p "$folderName"
# This will ask the user to type a secret password but will hide input
echo -n "Enter secret password: "
read -s password  # The `-s` flag hides the user input
echo  # This will move to a new line after user input
# This will calculate the SHA-256 hash of the password
passwordHash=$(echo -n "$password" | sha256sum | cut -d ' ' -f1)
# This saves the password hash in a file called 'secret_hash.txt' inside the chosen folder
echo "$passwordHash" > "$folderName/secret.txt"
# This will provide feedback to the user that the password hash has been saved
echo
echo "Password hash saved in '$folderName/secret.txt'."

