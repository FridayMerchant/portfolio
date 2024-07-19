#!/bin/bash

while true; do
    # Prompt the user for a URL
    read -p "Type a website URL to download or type 'exit' to quit: " url

    # Check if the user wants to exit
    if [[ "$url" == "exit" ]]; then
        echo "Exiting the program."
        break
    fi

    # Prompt the user for a download location
    read -p "Type the download location (including filename, e.g., /path/to/file.html): " location

    # Check if the URL is not empty and the location is not empty
    if [[ -z "$url" || -z "$location" ]]; then
        echo "Error: URL and location cannot be empty."
        continue
    fi

    # Use wget to download the webpage
    wget "$url" -O "$location"

    # Notify the user that the download is complete
    echo "Download complete: $location"
done
