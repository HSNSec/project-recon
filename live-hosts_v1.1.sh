#!/bin/bash


# ASK user to enter a network prefix

read -p "Enter the network prefix: " network


# DISPLAY "Starting ping sweep on network"
# ${var} is used to clearly define variable boundaries when combining variables with text (e.g., ${network}0 prevents confusion with a variable named network0)
echo "Starting Ping Sweep on ${network}"

# FOR each host number from 1 to 255
for host in {1..10}; do

    #CREATE target IP address by combining:    
    #network prefix + host number
    target="$network$host"

    #SEND one ping request to target IP
    ping -c 1 "$target" > /dev/null 2>&1

    #IF ping is successful THEN
    if [ $? -eq 0 ]; then
# [+] acts just like a bullet point.
    
        #DISPLAY "Host <target IP> is UP!"
        echo "[+] Host $target is up.!"
    #END IF
	fi
#END FOR
done

#DISPLAY "Scan complete!"
echo "Scan complete"
#END
