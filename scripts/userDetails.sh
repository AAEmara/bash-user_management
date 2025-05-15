#!/usr/bin/bash
# Retrieves and formats the details of the given user.

read -p "Please enter the user's username for more details: " user
echo ""
echo "      User Details      "
echo "========================"
awk -F: -v user="$user" ' $1 == user {
  print "Username:       " $1
  print "User ID:        " $3
  print "Group ID:       " $4
  print "Name/Comment:   " $5
  print "Home Direcotry: " $6
  print "Shell:          " $7
}' /etc/passwd
echo ""
