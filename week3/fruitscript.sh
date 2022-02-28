#!/bin/bash 

#fruit colours
Red='\033[0;31m'
Yellow='\033[1;33m'
Orange='\033[0,33m'
Green='\033[1;32m'
White='\033[1,37m'
NC='\033[0m'

#list of fruit, Apple=0, Mango =1...
fruit=("Apple" "Mango" "Strawberry" "Orange" "Banana")

#i is the variable, starting in position 1
#
for ((i=0; i<${#fruit}; i++))
do
    echo -e "${Red}FRUIT: ${Green}${fruit[i]}"
done
exit 0