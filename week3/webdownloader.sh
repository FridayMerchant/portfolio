#!/bin/bash

while true; do
    #prompt the user for a URL
    read -p "Type a website URL to download or type 'exit' to quit: " url

    #check if the user wants to exit
    if [[ "$url" == "exit" ]]; then
        echo "Exiting the program."
        break
    fi

    #prompt the user for a download location
    read -p "Type the download location (including filename, e.g., /path/to/file.html): " location

    #check if the URL is not empty and the location is not empty
    if [[ -z "$url" || -z "$location" ]]; then
        echo "Error: URL and location cannot be empty."
        continue
    fi

    #use wget to download
    wget "$url" -O "$location"

    #notify the user
    echo "Download complete: $location"
done
