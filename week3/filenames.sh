#!/bin/bash
#Author: Tyler Vivian
#Creation Date: 2/2/22
#Last Modified: 24/2/22
#Description: Reads the lines of a file to see if it exits in a directory 

while read line; do

if ! [[ -z $line ]]; then

 

        if [ -e "$line" ]; then echo "$line file exists"

        fi

        if [ -d "$line" ]; then echo "$line directory exists"

        fi

        if [ ! -d "$line" ] && [ ! -e "$line" ] ; then echo "I dont know what that is!"

        fi

fi

done <filenames.txt | grep .

#REFERENCE/ACKNOWLEDGEMENT
#code direction provided by Rajesh Soni

