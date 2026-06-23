#!/bin/bash
# Asking the user for target IP
read -p "Enter the target IP or URL: " target

echo "scanning $target..."

# Pinging IP
ping -c 1 "$target"

#Checking exit status
if [ $? -eq 0 ]; then
	echo "Target $target is live.!"
else
	echo "Target $target is Down."
fi
