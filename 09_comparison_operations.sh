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



