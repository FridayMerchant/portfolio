#!/bin/bash

#ipinfo.sh script and show output
ip_info_output=$(./ipinfo.sh)

#use sed with -n flag and p command to filter and display only IP Addresses
echo "$ip_info_output" | sed -n '/IP Address:/p'

