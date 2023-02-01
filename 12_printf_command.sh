#!/usr/bin/bash

### Just printing using printf
sleep 1
echo "printf 'Name:\t%s\nID:\t%04d\n' 'Emdad' '12' ----->>>>"
sleep 1
echo
sleep 1
printf "Name:\t%s\nID:\t%04d\n" "Emdad" "12"


### Assigning output into a variable called 'd'
sleep 1
echo
sleep 1
echo "Printing current user, date and time--->"
sleep 1
today=$(date +'%d-%m-%Y')
time=$(date +'%H:%M:%S')
printf -v d "Current User:\t%s\nDate:\t\t%s @ %s\n" $USER $today $time
echo "$d"
