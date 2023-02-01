#!/usr/bin/env bash

############# Colored Text: INFO ##############
# Syntex	: echo -e  "<colored-text-started-with-\033[...m-and-ends-with-/033[0m>"
# Example	: echo -e "\033[5;31;40mEror: Something went wrong!\033[0m"
# Explanation	: 'echo -e' ==> where -e means, we willll be using 'escaped-string' in 'echo' command
# 		: "\033[" ==> starting of escaped string
#		: "5;" ==> 5 is for 'blinking-style', string will be blinking
#		: "31;" ==> 31 is for 'foreground-color'
#		: "40" ==> 40 is for 'background-color'
#		: "m" ==> m indicates 'command-finished'
#		: "Error: Something went wrong!" ==> normal text (to be styled)
#		: "\033[0m" ==> used for 'ending-of-escaped-string'
#		:
# Color-code	: Color(front,back)=> Black(30,40), Red(31,41), Green(32,42), Yellow(33,43)
#		:		      Blue(34,44), Magenta(35,45), Cyan(36,46), White(37,47)
###############################################

### a simpled styled escaped-string
sleep 1
echo "echo -e '\033[34;42mColored Text\033[0m' (where 34->fore-color; 42->back-color) -->"
sleep 1
echo -e '\033[34;42mColored Text\033[0m'
sleep 1
echo
