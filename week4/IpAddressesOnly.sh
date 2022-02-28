#!/bin/bash
#Author: Tyler Vivian
#Creation Date: 8/2/22
#Last Modified: 24/2/22
#Description: Pulls out only IP addresses from ipinfo.sh

ip_info="$(./ipinfo.sh)"

#sed command gets rid of anything except IP Addresses
echo "$ip_info" | sed -n '/IP Address: / s//IP Address:/p'    

