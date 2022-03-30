#!/bin/bash

if ["$1" == ""] 
then
echo "No IP argument found, use syntax: ./ipsweep.sh 192.168.X"
else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
# use & at the end of ping command to run these commands at once, not one at a time.
done
fi
