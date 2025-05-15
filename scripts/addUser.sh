#!/bin/bash
# Adds a user to the system.


if groups $(whoami) | grep -q "sudo"; then
	read -p "Insert username: " user
	if  checkUser "$user"; then
		sudo useradd -m -s /bin/bash "$user"
		sudo passwd "$user"
		echo ""
		echo "User $user is created successfully"
		echo ""
		
	else
		echo ""
		echo =======================
		echo invalid username input
		echo =======================
		echo ""
	fi			
fi
