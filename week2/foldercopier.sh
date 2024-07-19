#!/bin/bash
# This will ask the user to type the name of the folder they want to copy
read -p "Type the name of the folder you would like to copy: " folderName

# This will check if the entered name is a valid directory
if [ -d "$folderName" ]; then
    # This will ask the user to type the name of the destination folder
    read -p "Type the name of the destination folder: " newFolderName
    
    # This will copy the directory to the new location
    cp -r "$folderName" "$newFolderName"
    
    echo "Folder '$folderName' copied to '$newFolderName'."
else
    # This will print an error message if the folder doesn't exist
    echo "Error: '$folderName' is not a valid folder."
fi

