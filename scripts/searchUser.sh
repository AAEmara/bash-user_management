#!/bin/bash
# Searches for a user within the system.


echo ""
echo ============= Search for a user ===============
read -p "enter the user name: " user
echo ""
if  checkUser "$user"; then
	if [[ $(grep "$user:" /etc/passwd ) ]]; then
		echo ========= found user $user ==============
		echo "user details"
		grep "$user" /etc/passwd
		
	else
		echo couldn\'t find user $user
	fi
else
	echo ""
	echo =======================
	echo invalid username input
	echo =======================
	echo ""
fi
echo ""
