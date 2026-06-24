#!/bin/bash
# Asking the user for target IP
read -p "Enter the target IP or URL: " target

echo "scanning $target..."

# Pinging IP
ping -c 1 "$target" > /dev/null 2>&1

#Checking exit status
if [ $? -eq 0 ]; then
	echo "Target $target is live.!"
else
	echo "Target $target is Down."
fi

#!/bin/bash
# Ask user to enter the network prefix

read -p "Enter the first three octets to scan the whole subnet: "network
