#!/bin/bash

Red='\033[0;31m'
Yellow='\033[1;33m'
Orange='\033[0,33m'
Green='\033[1;32m'
White='\033[1,37m'
NC='\033[0m'

#asking for the password
read -sp "Please type your password: " typedPassword

#converting to sha256sum
confirmPassword=$(echo $typedPassword | sha256sum)

hashfile="test/secret.txt"

myvariable=$(cat "$hashfile")



#comparing the passwords
if [ "$confirmPassword" = "$myvariable" ];then

    #success
    echo
    echo -e "${Green}Access Granted"
    exit 0
else

    #doesn't match
    echo
    echo -e "${Red}Access Denied"
    exit 1
fi

