#!/usr/bin/bash

## step 1:Print without any variable
# echo "Good Morning Chuck!"
# sleep 1
# echo "You're looking good today Chuck!"
# sleep 1
# echo "You have the best beard I've ever seen Chuck!!"


## step 2:Print with a variable [assigned value]

# don't keep any space between equal sign and variable value
# name="Chuck"
# echo "Good Morning $name!"
# sleep 1
# echo "You're looking good today $name!"
# sleep 1
# echo "You have the best beard I've ever seen $name!!"


## step 3:Print with a variable [scanned value]

# echo "Enter a name: "
# read name
# echo "Good Morning $name!"
# sleep 1
# echo "You're looking good today $name!"
# sleep 1
# echo "You have the best beard I've ever seen $name!!"


## step 4:Taking Parameter and Print them

# don't keep any space between equal sign and variable value
# structure: <file-name>.sh <space>  <1st-param> <space> <2nd-param> ....
# example: "./01_bestdayever.sh emdad beard"
# explanation: 
# './01_bestdayever.sh'-> execute the file '01_bestdayever.sh', 
# 'emdad'->1st-param, 
# 'beard'->2nd-param

# name=$1 #1st positional param
# object_to_complement=$2 #2nd positional param

# echo "Good Morning $name!"
# sleep 1
# echo "You're looking good today $name!"
# sleep 1
# echo "You have the best $object_to_complement I've ever seen $name!!"


## step 5:executing linux command while assigning variable

# don't keep any space between equal-sign and variable value
# structure: <variable-name>=$(<command-name>)
# example: "user_name=$(whoami)"
# explanation: 
# 'user_name' -> variable-name
# '$(whoami)' -> execute the command 'whoami' and save the output

# if sudo-> 'root', else-> 'emdad439'
user_name=$(whoami) #'whoami' -> 'who am i' command print the current user-name of linux
date_today=$(date) #'date' -> print the date 
working_directory=$(pwd) #'pwd' -> 'print working directory' print the path to current 'wd'

echo "Your user-name is: $user_name"
echo "Today is: $date_today"
echo "You are in: $working_directory"

