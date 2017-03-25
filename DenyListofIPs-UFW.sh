#!/bin/bash
# Mohammd

#This script should be run as sudo

#this cmd will get all ips trying to get access including yours if you had authentication failure
getallIPs=`cat /var/log/auth.log | grep "authentication failure" | cut -d" " -f14 | grep "rhost" | cut -d"=" -f2 | sort | uniq > denyIPlist.txt`

# take allowed IPs out
myip=XX.XX.XX.XX
myotherIP=XX.XX.XX.XX
# change XX.XX.XX.XX with the allowed IPs

while read ip; do
    # if those are allowed ips - just echo them
    if [ "$ip" == "$myip" ] || [ "$ip" == "$myotherIP" ]; then
        echo "Those are allowed IPs"
    else
      # else, deny thier access to my machine
         cmd=`ufw deny from $ip`
    fi
done <denyIPlist.txt
