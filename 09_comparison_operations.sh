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

