#!/bin/bash

#read command, asks you to name the folder you want to make
read -p "type the name of the folder you would like to create" folderName

#actual making of the folder
mkdir "$folderName"

exit 0