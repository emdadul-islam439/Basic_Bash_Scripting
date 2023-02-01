#!/usr/bin/bash


############################################ function part #############################

### creating a simple function and calling it ==>
function greet {
	echo "Hi there!"
}

echo "And now, a greeting!"
greet # called the 'greet' function
echo
echo


### function with argument
function greet {
        echo "Hi $1!"
}

echo "And now, a greeting!"
greet Emdad # called the 'greet' function
echo
echo


### function with multiple arguments
function greet {
        echo "Hi, $1! What a nice $2!"
}

echo "And now, a greeting!"
greet Emdad Morning # called the 'greet' function
greet Everybody Evening #arguments are -> Everybody, Evening
echo
echo


### array argument in function
function numberthings {
        i=1
	for f in $@; do
		echo $i: $f
		((i+=1))
	done
}

numberthings $(ls)
echo
numberthings pine birch maple spruce
echo
echo

