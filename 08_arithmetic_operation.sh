#!/usr/bin/bash

######### BASIC INFO #########
# ::Basic writing form::
# syntex: ((<arithmetic-expression>)) [double parenthesis with expression inside]
# Example: (( 8 + 5 )), (( 5**3 )) [exponent], (( 2*3 ))
#
# ::not-arithmetic-example:: 
# 8 + 5 [ without parenthesis,  "85" -> string]
# 
# ::Assigning to a variable::
# <variable-name>=$(( <arithmetic-expression> ))
# Example: addition=$(( 85 + 92 )), exponentiation=$(( 6**9 ))
#
# ::variable inside parenthesis::
# syntex: ((<variable-without-dollar_sign> <math-sign> <variable-without-dollar_sign>))
# Example: ((d+2)), ((a+=b)) etc.
# ###########################


### Basic assigning of a number to a variable
d=2
c=3
sleep 1
echo "assigned d=2 and c=3. now printing the values->"
sleep 2
echo "d = $d"
sleep 1
echo "c = $c"


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


### expressions Without assigning to variable
sleep 1
echo "e += 5 -> ((e+=5)) will be: $((e+=5))"
echo
sleep 2
echo "e *= 3 -> ((e*=5)) will be: $((e*=3))"
echo
sleep 2
echo "e /= 5 -> ((e/=5)) will be: $((e/=5))"
echo
sleep 2
echo "e -= 5 -> ((e-=5)) will be: $((e-=5))"
echo
exit
sleep 2
echo "e += 5 -> ((e+=5)) will be: $((e+=5))"
echo
sleep 2
echo "e += 5 -> ((e+=5)) will be: $((e+=5))"

