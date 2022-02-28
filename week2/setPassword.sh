#!/bin/bash
#Author: Tyler Vivian
#Creation Date: 25/1/22
#Last Modified: 24/2/22
#Description: Sets a password

#asks user to make a folder for their password
read -p "Please create a folder for your Password" folderName

mkdir $folderName

#User enteres the password
read -sp "Please type your password" setPassword

#password is then hashed and put into secret.txt in the $folderName
echo $setPassword | sha256sum > ./$folderName/secret.txt

exit 0

#REFERENCE/ACKNOWLEDGEMENT
#code direction provided by ECU
