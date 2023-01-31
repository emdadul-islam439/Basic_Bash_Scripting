#!/usr/bin/env bash

function current_pwd {
	pwd
}

function length_of_number {
	given_number=$1
	length=0
	while [[ given_number -gt 0 ]]; do
		(( length++ ))
		(( given_number/=10 ))
	done
	echo $length
}

## following some commented codes were written only
# for testing 'current_pwd' and 'length_of_number' function
# echo "Current PWD is: $(current_pwd)"
# echo $(length_of_number 12)
# exit


function leading_zeroes {
	current_number=$1
	last_number=$2
	length_of_current_number=$(length_of_number $current_number)
	length_needed=$(length_of_number $last_number)
	
	leading_zeroes=""
	for (( i=$length_of_current_number; i<$length_needed; i++ )) do
		leading_zeroes+="0"
	done

	echo $leading_zeroes
}

## following some commented lines are written for testing 'leading_zeroes' function
# echo "leading_zeroes 9 100 -> $(leading_zeroes 9 100)"
# echo "leading_zeroes 17 100 -> $(leading_zeroes 17 100)"
# echo "leading_zeroes 100 100 -> $(leading_zeroes 100 100)"
# exit


function create_files {
	## 'range' can't be used
	 # because they need hard-coded number
	 # touch file_${01..150}
	 # error: "bash: ${0..$x}: bad substitution"

	## we need 'loop'
	declare -i no_of_files=$1
	for (( i=0; i<=$no_of_files; i++ )) do
		touch file_$(leading_zeroes $i $no_of_files)$i
	done
}


echo "Current PWD is: $(current_pwd)" 
sleep 1

echo
echo "Creating a new directory called 'Test'"
mkdir Test
sleep 1

echo
echo "Going to the 'Test' directory..."
sleep 1

cd Test
echo "New PWD: $(current_pwd)"
sleep 1

echo
echo "Creating 150 files like: file_001, file_002, and so on..."
$(create_files 150)
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

