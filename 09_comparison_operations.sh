#!/usr/bin/env bash

########### BASIC COMPARISON ############
# syntex	: [[ <var/num/str> <comparison-sign> <var/num/str> ]]]
# Exmaple	: str-comparison-> [[ $a < $b ]], [[ 2 >= 3 ]] { both a,b and 2,3 are string }
#	 	: arith-comparison-> [[ $a -lt $b ]], [[ 2 -ge 3 ]] { both a,b and 2,3 are int }
#
# ouput		: 0-> for 'true', 1-> for 'false'
# other-info	: str-signs==>   ' < ', ' > ', ' <= ', ' >= ', ' == ', ' != ' 
# 		: arith-signs==> '-lt', '-gt', ' -le', ' -ge', ' -eq', ' -ne'
########################################


### Basic 'str' comparisons
sleep 1
echo "BASIC STR COMPARISONS:"
sleep 1
echo "Output of [[  'cat' == 'cat' ]] --> "
sleep 2
[[ 'cat' == 'cat' ]]
echo "echo \$? ==> $(echo $?) { '0': true, '1': false }"
echo
sleep 1
echo "Output of [[  'cat' = 'dog' ]] --> "
sleep 2
[[ 'cat' = 'dog' ]]
echo "echo \$? ==> $(echo $?) { '0': true, '1': false }"
echo
sleep 1
echo "Output of [[  20 > 100 ]] --> "
sleep 2
[[ 20 > 100 ]]
echo "echo \$? ==> $(echo $?) { '0': true, '1': false }"
echo


### Basic 'arith' comparisons
sleep 1
echo "BASIC ARITHMATIC COMPARISONS:"
sleep 1
echo "Output of [[  20 -eq 20 ]] --> "
sleep 2
[[ 20 -eq 20 ]]
echo "echo \$? ==> $(echo $?) { '0': true, '1': false }"
echo
sleep 1
echo "Output of [[  10 -eq 20 ]] --> "
sleep 2
[[ 10 -eq 20 ]]
echo "echo \$? ==> $(echo $?) { '0': true, '1': false }"
echo
sleep 1
echo "Output of [[  20 -gt 100 ]] --> "
sleep 2
[[ 20 -gt 100 ]]
echo "echo \$? ==> $(echo $?) { '0': true, '1': false }"
echo


### printing or saving output
sleep 1
echo "Printing/Saving Outputs::"
sleep 2
echo "echo [[  20 -eq 20 ]] --> "
sleep 1
echo [[ 20 -eq 20 ]]
echo
sleep 2
echo "echo \$[[  10 -eq 20 ]] --> "
sleep 1
echo $[[ 10 -eq 20 ]]
echo
sleep 2
echo "echo \$([[ 10 -eq 20 ]]) --> "
sleep 1
echo $([[ 10 -eq 20 ]])
echo
sleep 2
echo "first: [[ 10 -eq 20 ]] --> then: echo \$? -->"
sleep 1
[[ 10 -eq 20 ]]
echo $?
echo
