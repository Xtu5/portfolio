#!/bin/bash
#Author: Tyler Vivian
#Creation Date: 19/2/22 
#Last Modified: 24/2/22
#Description: Pulls up all user account info on this machine


#added in a sed command to take out the x
awk -F: '$7~/\/[b][a-z][a-z]\/[b][a-z][a-z][a-z]/' /etc/passwd | 
sed 's/:x//' |
awk -F":" ' 
BEGIN {
    
    print "|       \033[34mUsername\033[0m      |  \033[34mUserID\033[0m  |  \033[34mGroupID\033[0m  |                 \033[34mHome\033[0m                  |          \033[34mShell\033[0m         | "
    print "|_____________________|__________|___________|_______________________________________|________________________| "
}

{
    
 
}

{
    
    
    printf("|\033[32m%-21s\033[0m|\033[33m%-10s\033[0m|\033[33m%-11s\033[0m|\033[33m%-39s\033[0m|\033[33m%-24s\033[0m|\n", $1, $2, $3, $5, $6);

}'

#REFERENCE/ACKNOWLEDGEMENT
#awk -F command provided by Rajesh Soni