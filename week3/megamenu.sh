#!/bin/bash
#Author: Tyler Vivian
#Creation Date: 2/2/22
#Last Modified: 24/2/22
#Description: An even bigger menu for all the scripts 

#colours
Black='\033[30m'
Red='\033[31m'
Green='\033[32m'
Brown='\033[33m'
Blue='\033[34m'
Purple='\033[35m'
Cyan='\033[36m'
Gray='\033[37m'
NC='\033[0m'

#run the passwordCheck feature
./passwordCheck.sh

for (( ; ; ))
do

if [ $? -eq 1 ]; then

    echo -e "Goodbye"
    exit 0
else
    menu="${Brown}Select an option\n
    ${Purple}1.Create a folder\n
    2.Copy a folder \n
    3.Set a password\n
    4.Calculator\n
    5.Make a folder\n
    6.Check filenames\n
    7.Download a File\n
    8.Exit "
    echo -e $menu
fi
tput setaf 1
read option
tput setaf 7
if [ $option == 1 ]; then
    ./foldermaker.sh
elif [ $option == 2 ]; then
    ./foldercopier.sh
elif [ $option == 3 ]; then
    ./setPassword.sh
elif [ $option == 4 ]; then
    ./calculator.sh
elif [ $option == 5 ]; then
    ./foldermaker.sh
elif [ $option == 6 ]; then
    ./filenames.sh
elif [ $option == 7 ]; then
    ./InternetDownloader.sh
elif [ $option == 8 ]; then
    echo "Goodbye"
    break
else
    echo -e ${Red}"Please type a number"
fi
done

#REFERENCE/ACKNOWLEDGEMENT
#code direction provided by ECU
