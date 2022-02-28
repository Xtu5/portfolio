#!/bin/bash
#Author: Tyler Vivian
#Creation Date: 26/1/22
#Last Modified: 24/2/22
#Description: Copies a folder from a directory

for (( ; ; ))
do

read -p "Enter what folder to copy, or type 'done' to exit: " folderName

#if the name is a valid directory


    if [ -d "$folderName" ]; then

        #copy it to a new location

        read -p "Type the name of the destination folder: " newFolderName

        cp -r "$folderName" "$newFolderName"
    
    elif [ $folderName = "done" ]; then
        
        #breaks the loop
        break

    else

        #otherwise, print an error

        echo "I couldn't find that folder"

    fi

done

#REFERENCE/ACKNOWLEDGEMENT
#Code provided by ECU