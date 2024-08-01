#!/bin/bash

echo "User Accounts:"

awk -F: '
BEGIN {
    print "____________________________________________________________________________________________________";
    print "| \033[34mUsername        \033[0m | \033[34mUID \033[0m | \033[34mGID \033[0m | \033[34mHome Directory                     \033[0m | \033[34mShell                            \033[0m |";
    print "|-----------------+-----+-----+----------------------------------------+---------------------------------------|";
}

{
    printf("| \033[33m%-15s\033[0m | \033[32m%-3s\033[0m | \033[32m%-3s\033[0m | \033[36m%-35s\033[0m | \033[35m%-35s\033[0m |\n", $1, $3, $4, $6, $7);
}

END {
    print("____________________________________________________________________________________________________");
}' /etc/passwd
