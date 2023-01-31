#!/usr/bin/env bash

current_pwd=$(pwd)
echo "Current PWD is: $current_pwd" 
sleep 1

echo
echo "Creating a new directory called 'Test'"
mkdir Test
sleep 1

echo
echo "Going to the 'Test' directory..."
sleep 1

cd Test
pwd=$(pwd)
echo "New PWD: $pwd"
sleep 1

echo
echo "Creating 150 files like: file_001, file_002, and so on..."
$(touch file_{01..150})
sleep 2

echo "Created 150 files. Here are them->"
all_files=$(ls)
echo $all_files
sleep 1
echo ""
echo ""

total_files=$(ls -l | wc -l)
echo "total file count: $total_files"
sleep 1

echo
echo
echo "Removing all files..."
$(rm *)
sleep 1


all_files=$(ls)
echo "Removed all files. Here are the file list->"
echo $all_files
sleep 1

total_files=$(ls -l | wc -l)
echo "Total file count: $total_files"

