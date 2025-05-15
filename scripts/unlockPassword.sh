#!/usr/bin/bash
# Unlocks the account of given user.

read -p "Insert username to unlock user's password: " user
sudo passwd -u "$user"
echo ""
