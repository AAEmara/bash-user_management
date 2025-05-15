#!/bin/bash
# Lists users with /bin/bash SHELL.


echo "" 
echo ============= List of Users ==============
echo ""
awk -F: '$3 >= 1000 && $3 < 65534 {print $1}' /etc/passwd
echo ""
