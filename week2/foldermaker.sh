#!/bin/bash
#Author: Tyler Vivian
#Creation Date: 24/1/22
#Last Modified: 24/2/22
#Description: Creates a folder

#read command, asks you to name the folder you want to make
read -p "Type the name of the folder you would like to create" folderName

#actual making of the folder
mkdir "$folderName"

exit 0

#REFERENCE/ACKNOWLEDGEMENT
#Code provided by ECU