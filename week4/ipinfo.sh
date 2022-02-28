#!/bin/bash
#Author: Tyler Vivian
#Creation Date: 7/2/22
#Last Modified: 24/2/22
#Description: Uses the ifconfig command to pull some network data

#get info about networking from the ifconfig command
net_info="$(ifconfig)"

#parse out the ip address lines using sed
addresses=$(echo "$net_info" | sed -n '/inet / {
    s/inet/IP Address:/
    s/netmask/\n\t\Subnet Mask:/
    s/broadcast/\n\t\Broadcast Address:/
    p
    }')

#formatting output
echo -e "The IP addresses on this computer are:\n $addresses"

#REFERENCE/ACKNOWLEDGEMENT
#code provided by ECU
