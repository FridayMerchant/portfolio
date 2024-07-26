#!/bin/bash

# Execute the ipinfo.sh script and show output
ip_info_output=$(./ipinfo.sh)

# Use sed with -n flag and p command to filter and display only IP Addresses
echo "$ip_info_output" | sed -n '/IP Address:/p'

