#!/bin/bash
#Author: Tyler Vivian
#Creation Date: 28/1/22
#Last Modified: 24/2/22
#Description: A menu to use past scripts written

#run the passwordCheck feature
./passwordCheck.sh


if [ $? -eq 1 ]; then

    echo "Goodbye"
    exit 0
else
    menu="Select an option\n1.Create a folder\n2.Copy a folder \n3.Set a password "
    echo -e $menu
fi

read option

if [ $option -eq 1 ]; then
    ./foldermaker.sh
elif [ $option -eq 2 ]; then
    ./foldercopier.sh
elif [ $option -eq 3 ]; then
    ./setPassword.sh
fi

exit 1

#REFERENCE/ACKNOWLEDGEMENT
#Code direction provided by ECU