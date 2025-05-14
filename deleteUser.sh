#!/bin/bash
if groups $(whoami) | grep -q "sudo"; then
	read -p "Insert username: " user
	if  checkUser "$user"; then
		sudo mkdir -p "/home/backup/$user"
		sudo cp -r "/home/$user" "/home/backup/$user"
		sudo userdel -r "$user" 2> /dev/null
		echo ""
		echo "user deleted successfully"
		echo ""
	fi
fi
