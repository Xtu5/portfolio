#!/bin/bash
#Author: Tyler Vivian
#Creation Date: 31/1/22 
#Last Modified: 24/2/22
#Description: Does some calculating

#setting up the options for the calculator
menu="Please choose type of calculation using 1-4:\n
    1.Addition\n
    2.Subtraction\n
    3.Multiplication\n
    4.Division"

echo -e $menu

read option

#addition
if [ $option -eq 1 ]; then
    tput setaf 4; read -p "1st Interger: " int1
    read -p "2nd Interger: " int2
    expr $int1 + $int2
    tput setaf 7

#subtraction
elif [ $option -eq 2 ]; then
    tput setaf 2; read -p "1st Interger: " int1
    read -p "2nd Interger: " int2
    expr $int1 - $int2
    tput setaf 7

#multiplication
elif [ $option -eq 3 ]; then
    tput setaf 1; read -p "1st Interger: " int1
    read -p "2nd Interger: " int2
    expr $int1 \* $int2
    tput setaf 7

#division
elif [ $option -eq 4 ]; then
    tput setaf 5; read -p "1st Interger: " int1
    read -p "2nd Interger: " int2
    expr $int1 / $int2
    tput setaf 7
    
fi




exit 0

#REFERENCE/ACKNOWLEDGEMENT
#code direction provided by ECU