#!/bin/bash
#Author: Tyler Vivian
#Creation Date: 27/1/22
#Last Modified: 24/2/22
#Description: checks the password that we made with setPassword.sh

#asking for the password
read -sp "Please type your password" typedPassword

#converting to sha256sum
confirmPassword=$(echo $typedPassword | sha256sum)

#test is the file name we set earlier
hashfile="test/secret.txt"

myvariable=$(cat "$hashfile")

#comparing the passwords
if [ "$confirmPassword" = "$myvariable" ];then

    #success
    echo " "
    echo "Access Granted"
    exit 0
else

    #doesn't match
    echo "Access Denied"
    exit 1
fi

#REFERENCE/ACKNOWLEDGEMENT
#Code direction provided by Rajesh Soni
