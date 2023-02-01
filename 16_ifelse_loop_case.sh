#!/usr/bin/bash

################################ if/elif/else ##############################

## normal if statement
a=2
if [ $a -gt 4 ]; then
	echo $a is greater than 4
elif [ $a -eq 4 ]; then
	echo $a is equal to 4
else
	echo $a is less than 4
fi
echo
echo

## if with regular expression
a="This is my string!"
if [[ $a =~ [0-9]+ ]]; then
	echo "There are numbers in the string-> '$a'!"
else
	echo "There are no numbers in the string-> '$a'!"
fi

echo
echo



############################# while/until #################################
i=0
while [ $i -le 10 ]; do
	echo i:$i
	((i+=1))
done


j=0
until [ $j -ge 10 ]; do
	echo j:$j
	((j+=1))
done

echo
echo




############################## FOR LOOP ###################################

### don't have to use parenthesis if use 'do' in the next line

## loop through into a list
for i in 1 2 3
do
	echo $i
done
echo
echo


## loop through into a range
for i in {1..100}  # can be  {1..100..2}, each 2 elements
do
	echo $i
done
echo
echo


## c-like for loop
for ((i=0; i<=10; i++))
do
	echo $i
done
echo
echo


## loop through into an array
arr=("apple" "banana" "cherry")
for i in ${arr[@]}
do
	echo $i
done
echo
echo



## loop through an ASSOCIATIVE ARRAY
declare -A dec_arr
dec_arr['name']='scott'
dec_arr['id']='1234'

for i in "${!dec_arr[@]}"
do
	echo "$i: ${dec_arr[$i]}"
done
echo
echo




## loop through the 'ls' command
for i in $(ls)
do
	echo $i
done
echo
echo




######################################## case statement ##############################
# simple case-statement
a="dog"
case $a in
	cat) echo "Feline";;
	dog|puppy) echo "Canine";;
	*) echo "No match!";;
esac
echo
echo



