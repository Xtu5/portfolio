#!/bin/bash
#Author: Tyler Vivian
#Creation Date: 7/2/22 
#Last Modified: 24/2/22
#Description: A game for the user to guess a number!

Black='\033[30m'
Red='\033[31m'
Green='\033[32m'
Brown='\033[33m'
Blue='\033[34m'
Purple='\033[35m'
Cyan='\033[36m'
Gray='\033[37m'
NC='\033[0m'

printError() 
      
{ 
      echo -e "\033[31mERROR:\033[0m $1" 
      
} 

getNumber() 
      
{ 
       read -p "$1: " 
       
       while (( "$REPLY"<$2 || "$REPLY">$3 )); do 
       
       printError "Input must be between $2 and $3" 
       
       read -p "$1: " 
       
       done 
      
} 
echo "Lets play a Number Guessing Game!"
for (( ; ; ))
do

getNumber "Guess a number between 1 and 100" 1 100

if [ "$REPLY" = 42 ]; then

       echo "Right!"
       break
       
elif [ "$REPLY" != 42 ]; then


       if [ "$REPLY" -gt 42 ]; then
              
              echo "Too High!"

       elif [ "$REPLY" -lt 42 ]; then

              echo "Too Low!"

       fi 


fi

done

#REFERENCE/ACKNOWLEDGEMENT
#code direction provided by ECU


