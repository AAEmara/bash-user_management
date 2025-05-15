#!/usr/bin/bash
# Changes the password of given user.

read -p "Insert username to change its password: " user
sudo passwd "$user"
echo ""
