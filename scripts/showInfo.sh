#!/bin/bash
# Shows System's information (Hostname, Operating System).
# Shows CPU's Information.
# Shows Disk Information.
# Shows Memory Information.
# Shows Network Information.
# Shows Uptime.


echo ""
echo ========== System information ===========
echo Hostname: $(hostname)
echo OS: $(uname -o)
echo ""
echo ========= CPU information =============
lscpu | grep -E 'Model name|Architecture|CPU\(s\)'
echo ""
echo ========= Disk information =============
df -h 
echo ""
echo ========= Memory information ============= 
free -h
echo ""
echo ====== Network information ======
ip a | grep inet | grep -v 127.0.0.1 | cut -f2
echo ""
echo ====== Uptime ======
uptime -p
echo ""
