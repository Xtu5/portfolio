#!/bin/bash
#Author: Tyler Vivian
#Creation Date: 2/2/22
#Last Modified: 24/2/22
#Description: Downloads a file using an URL

#setting the loop to be infinite until the user exits
for (( ; ; ))
do

#asking the user to type in a URL or exit
read -p "Please enter a URL to download a file or type exit to quit" res

#allows the user to exit
if [ $res = "exit" ]; then   
    
    #break ends the script
    break
    exit 1

else
    #retrieving the file
    wget $res

fi


done

#REFERENCE/ACKNOWLEDGEMENT
#code direction provided by ECU