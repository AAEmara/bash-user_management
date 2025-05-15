#!/usr/bin/bash
# Locks the account of given user.

read -p "Insert username to lock user's password: " user
sudo passwd -l "$user"
echo ""
