#!/bin/bash

ans=0

cases(){
	case "$1" in 1)
		showInfo;;
		2)
		listUsers;;
		3)
		searchUser;;
		4)
		addUser;;
		5)
		deleteUser;;
    6)
    userDetails;;
    7)
    changePassword;;
    8)
    lockPassword;;
    9)
    unlockPassword;;
		10)
		exit 0;;
		*)	
		;;
	esac
}

checkUser(){
	if [[ "$1" =~ ^[a-zA-Z_][a-zA-Z0-9_-]*$ ]]; then
		return 0
	else
		return 1
	fi
}

showInfo(){
	source ./scripts/showInfo.sh
}

listUsers(){
	source ./scripts/listUsers.sh
}

searchUser(){
	source ./scripts/searchUser.sh
}

addUser(){
	source ./scripts/addUser.sh
	
}

deleteUser(){
	source ./scripts/deleteUser.sh
}

userDetails(){
  source ./scripts/userDetails.sh
}

changePassword(){
  source ./scripts/changePassword.sh
}

lockPassword(){
  source ./scripts/lockPassword.sh
}

unlockPassword(){
  source ./scripts/unlockPassword.sh
}

while [ $ans -ne 10 ]; do
	echo 1.Show system information
	echo 2.List users with /bin/bash shell
	echo 3.Search for a user
	echo 4.Add user
	echo 5.Delete user with home backup
	echo 6.Show user details
	echo 7.Change user password
	echo 8.Lock user
	echo 9.Unlock user
	echo 10.Exit
	echo ""
	echo ""
	read -p "Choose from list: " inp
	if [[ $inp =~ ^([1-9]|10)$ ]]; then
		ans=$inp
		cases "$ans"
	else	
		source ./scripts/invalidInput.sh
	fi
	
done
