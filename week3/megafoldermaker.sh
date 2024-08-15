#!/bin/bash 
      
#if there isnt two arguments
      
if (( $#!=2 )); then 
      
    #Print an error and exit 
      
    echo "Error, provide two numbers" && exit 1 
      
fi 
      
#every number between the first argument and the last 
      
for ((i = $1; i <= $2; i++)) 
      
do 
      
    #create a new folder for that number 
      
    echo "Creating directory number $i" 
      
    mkdir "week $i" 
      
done 
     
					
