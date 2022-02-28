#!/bin/bash
#Author: Tyler Vivian
#Creation Date: 18/2/22
#Last Modified: 24/2/22
#Description: Pulls down a list of Google server Ip's and formats it into a table

echo "Google Server IPs:"
awk -F":" '
BEGIN {


    print "________________________________";

    print "| \033[34mServer Type\033[0m | \033[34mIP\033[0m             |";

}

{

    printf("| \033[33m%-11s\033[0m | \033[35m%-14s\033[0m |\n", $1, $2);

}

END {

    print("________________________________");

}' input.txt

#REFERENCE/ACKNOWLEDGEMENT
#Code provided by ECU