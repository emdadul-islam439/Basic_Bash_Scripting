#!/usr/bin/bash

##### INFO ####
# simple-sytex: 'grep <search-term> <file-name>'
# 'grep' is very handy to find desired 'string' from a file
# it returns all the 'lines' containing the 'search-term' from the specified file
# Example:
#	if 'cat success-error.txt' command shows these output->
#	OUTPUT: 
#		'00_test_file' -> '../CopyPastingFolder/00_test_file'
#		cp: can not open '00_test_file' for reading: Permission denied
#		'01_test_file' -> '../CopyPastingFolder/01_test_file'
#	
#	INPUT		: 'grep cp success-error.txt'
#	OUTPUT		: cp: can not open '00_test_file' for reading: Permission denied
#	EXPLANATION	: only the lines containing 'cp' is being shown
##############


### permanently make 'search-term' colorful whenever found from search
echo "making found-search-terms colorful by 'GREP_OPTIONS='--color=auto'"
export GREP_OPTIONS='--color=auto'


### trying to search for a string in a file with 'grep'
sleep 2
echo "[Without color] Output of 'grep cp success-error.txt' command->"
grep cp success-error.txt
echo
echo
echo "[Colorful] Output of 'grep --color=auto cp success-error.txt' command->"
grep --color=auto cp success-error.txt


### trying to search for with NON_CASE_SENSITIVE term
sleep 2
echo
echo
echo "Searching for 'DENIED' with -i flag (case-insensitive)"
grep --color=auto -i DENIED success-error.txt
echo


### print only the 3rd word of matching lines with 'awk' command
echo
sleep 2
echo "printing the 3rd word of every matching line"
echo "example: 'grep -i DENIED success-error.txt | awk {'print $3'}"
echo "OUTPUT:"
grep -i DENIED success-error.txt | awk {'print $3'}



####### PING INFO ##########
# the command: 'ping -c 1 127.0.0.1' shows the following output
# PING 127.0.0.1 (127.0.0.1) 56(84) bytes of data.
# 64 bytes from 127.0.0.1: icmp_seq=1 ttl=64 time=0.088 ms
#
# --- 127.0.0.1 ping statistics ---
# 1 packets transmitted, 1 received, 0% packet loss, time 0ms
# rtt min/avg/max/mdev = 0.088/0.088/0.088/0.000 ms
#
#
# INPUT		: ping -c 1 127.0.0.1 | grep 'bytes from' | cut -d = -f 4
# OUTPUT	: 0.088ms
# EXPLANATION	: after getting all the output from 'ping' command, the ouputs are sent to 
#		: the 'grep' portion. 
#		: 'grep' command searches for 'bytes from' string and send the line to 
#		: the 'cut' portion. 
#		: 'cut' command splits the line by '=' char and return only the 4th slice
###########################

 
### print the 4th portion of the matched lines
sleep 2
echo
sleep 1
echo
echo "'ping -c 1 127.0.0.1 | grep 'bytes from' | cut -d = -f 4' command will show" 
echo "only the 4th portion of the matched line"
echo "INPUT: ping -c 1 127.0.0.1"
ping -c 1 127.0.0.1 
sleep 5
echo
echo "OUTPUT for 'ping -c 1 127.0.0.1 | grep 'bytes from' | cut -d = -f 4'....."
sleep 2
ping -c 1 127.0.0.1 | grep 'bytes from' | cut -d = -f 4
echo
