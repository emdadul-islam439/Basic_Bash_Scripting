#!/usr/bin/bash

## step 1:Print without any variable
#echo "Good Morning Chuck!"
#sleep 1
#echo "You're looking good today Chuck!"
#sleep 1
#echo "You have the best beard I've ever seen Chuck!!"


## step 2:Print with a variable [assigned value]

# don't keep any space between equal sign and variable value
#name="Chuck"
#echo "Good Morning $name!"
#sleep 1
#echo "You're looking good today $name!"
#sleep 1
#echo "You have the best beard I've ever seen $name!!"


## step 2:Print with a variable [scanned value]

# don't keep any space between equal sign and variable value
echo "Enter a name: "; read name
echo "Good Morning $name!"
sleep 1

echo "You're looking good today $name!"
sleep 1

echo "You have the best beard I've ever seen $name!!"

