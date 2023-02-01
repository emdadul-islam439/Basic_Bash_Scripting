#!/usr/bin/bash

a=()
b=("apple" "banana" "cherry")
echo "added in 'b'-> apple banana cherry"
echo
echo "3rd element of 'b' --->  ${b[2]}"
echo
echo "adding in 'b' --> kiwi"
b[5]="kiwi"
echo
echo "adding in 'b' --> mango"
b+=("mango")
echo
echo "adding in 'b' --> test"
b+="test"  ## will be con-catenated into the [0]'th index


echo "all elements of 'b' are->>>"
echo ${b[@]}
echo
echo "last element of 'b' is:"
echo ${b[@]: -1}


echo
echo
echo "Declaring associative array---> declare -A myarray..."
declare -A myarray
myarray[color]=blue
myarray["office building"]="HQ West"

echo
echo ${myarray["office building"]} is ${myarray[color]}
