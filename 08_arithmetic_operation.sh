#!/usr/bin/bash

######### BASIC INFO #########
# ::Basic writing form::
# arithmetic expression written in this way -> (( ))
# Example: (( 8 + 5 )), (( 5**3 )) [exponent], (( 2*3 ))
# not-arithmetic: 8 + 5 [ without parenthesis,  "85" -> string]
# 
# ::Assigning to a variable::
# <variable-name>=$(( <arithmetic-expression> ))
# Example: addition=$(( 85 + 92 )), exponentiation=$(( 6**9 ))
# ###########################


### Basic assigning of a number to a variable
d=2
c=3
sleep 1
echo "assigned d=2 and c=3. now printing the values->"
sleep 2
echo "d = $d"
sleep 1
echo "e = $d"


### Assigning arithmetic expression's result to variable
echo
sleep 2
echo
echo "new variable 'e = d + 2' will be: e=\$(( d+2 ))"
sleep 2
e=$(( d+2 ))
echo "e = $e"
sleep 1
echo

