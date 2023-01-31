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
