#!/usr/bin/env bash

myDir='/home/emdad439/Developing'

## The followin line has two commands
# first : go to 'myDir' location
# second: list all directories ends with '/' char in 'myDir' location
#	: and print only the portions before first space of each one
first_word_of_directories=$(cd ${myDir} && /usr/bin/ls -d */ | cut -d " " -f 1)
arr=($first_word_of_directories)
echo first directory = ${arr[0]}
echo second_directory = ${arr[1]}


## INPUT:
# ./04_listofdirectories_firstword.sh

## OUTPUT:
# first directory = Bash_Scripting/
# second_directory = Django_Journey/
