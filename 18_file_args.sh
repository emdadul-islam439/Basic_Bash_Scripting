#!/usr/bin/bash

### simply print the first argument
echo $1
echo
echo

### loop through the arguments
### Fun fact: './18_file_args.sh apple birch hello $(ls)'-> gave 30 arguments
for i in $@
do
	echo $i
done
echo
echo


### total number of arguments
echo "There were $# arguments."
echo
echo


