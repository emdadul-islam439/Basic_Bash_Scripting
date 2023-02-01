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
#		:
# Style-code	: Style-name(code)=> No-style(0), Bold(1), Low-intensity(2), Underline(4), 
#		: 		     Blinking(5),Reverse(7), Invinsible(8)
#		:
#		:
# tput-style	: Colors ==> Fore: tput setaf [0-7] || Back: tput setab [0-7]
#		: 	     bla-0, red-1, gr-2, ye-3, blu-4, mag-5, cy-6, wh-7
#		: Styles ==> no-style: tput sgv0 || bold: tput bold || low-intensity: tput dim
#		: 	     underline: tput smul || blinking: tput blink || reverse: tput rev
#		:
#		:
# tput-man-page	: "man terminfo"
###############################################


### a simpled styled escaped-string
sleep 1
echo "echo -e '\033[34;42mColored Text\033[0m' (where 34->fore-color; 42->back-color) -->"
sleep 1
echo -e '\033[34;42mColored Text\033[0m'
sleep 1
echo

sleep 1
echo "echo -e '\033[30;41mBlack on Red\033[0m' -->"
sleep 1
echo -e '\033[30;41mBlack on Red\033[0m'
sleep 1
echo

sleep 1
echo "echo -e '\033[37;40mWhite on Black\033[0m'-->"
sleep 1
echo -e '\033[37;40mWhite on Black\033[0m'
sleep 1
echo

sleep 1
echo "echo -e '\033[32;40mGreen on Black\033[0m'-->"
sleep 1
echo -e '\033[32;40mGreen on Black\033[0m'
sleep 1
echo

sleep 1
echo "echo -e '\033[31;47mRed on White\033[0m' -->"
sleep 1
echo -e '\033[31;47mRed on White\033[0m'
sleep 1
echo


### Different Colored-texts with Styles
sleep 1
echo
sleep 1
echo
sleep 1
echo "echo -e '\033[1;30;41mStyle:BOLD |  Black on Red\033[0m' -->"
sleep 1
echo -e '\033[1;30;41mStyle:BOLD |  Black on Red\033[0m'
sleep 1
echo

sleep 1
echo "echo -e '\033[4;37;40mStyle:UNDERLINED |  White on Black\033[0m'-->"
sleep 1
echo -e '\033[4;37;40mStyle:UNDERLINED |  White on Black\033[0m'
sleep 1
echo

sleep 1
echo "echo -e '\033[7;32;40m'Style:REVERSE | Green on Black'\033[0m'-->"
sleep 1
echo -e "\033[7;32;40m'Style:REVERSE | Green on Black'\033[0m"
sleep 1
echo

sleep 1
echo "echo -e '\033[5;31;47mStyle:BLINKING | Red on White\033[0m' -->"
sleep 1
echo -e '\033[5;31;47mStyle:BLINKING | Red on White\033[0m'
sleep 1
echo



### Multiple Styled-texts
sleep 1
echo
sleep 1
echo "echo -e '\033[5;31;47mBLINKING PART\033[0m || \033[1;30;41mBOLD PART\033[0m' -->"
sleep 1
echo -e '\033[5;31;47mBLINKING PART\033[0m || \033[1;30;41mBOLD PART\033[0m'
sleep 1
echo

sleep 1
echo "echo -e '\033[5;31;47mBLINKING PART\033[0m || \033[4;37;40mUNDERLINED PART\033[0m'-->"
sleep 1
echo -e '\033[5;31;47mBLINKING PART\033[0m || \033[4;37;40mUNDERLINED PART\033[0m'
echo
sleep 1



### Styling with VARIABLE
echo
sleep 2
echo "Assigning style in variables:"
sleep 1
no_style="\033[0m"
echo "no_style='\033[0m'"
sleep 1
bold_black_red="\033[1;30;41m"
echo "bold_black_red='\033[1;30;41m'"
sleep 1
blinking_red_white="\033[5;31;47m"
echo "blinking_red_white='\033[5;31;47m'"
sleep 1
echo
sleep 1
echo

sleep 1
echo
sleep 1
echo "echo -e '\$blinking_red_white BLINKING PART \$no_style || \$bold_black_red BOLD PART \$no_style' -->"
sleep 1
echo -e "$blinking_red_white BLINKING PART $no_style || $bold_black_red BOLD PART $no_style"
sleep 1
echo


### TPUT-Styling with VARIABLE
echo
sleep 2
echo "Assigning style with TPUT in variables:"
sleep 1
no_style=$(tput sgr0)
echo "no_style=\$(tput sgr0)"
sleep 1
bold_black_red=$(tput bold; tput setaf 0; tput setab 1)
echo "bold_black_red=\$(tput bold; tput setaf 0; tput setab 1)"
sleep 1
blinking_red_white=$(tput blink; tput setaf 1; tput setab 7)
echo "blinking_red_white=\$(tput blink; tput setaf 1; tput setab 7)"
sleep 1
echo
sleep 1
echo

sleep 1
echo 
sleep 1
echo "echo -e '\$blinking_red_white BLINKING PART \$no_style || \$bold_black_red BOLD PART \$no_styl'"
sleep 1
echo -e "$blinking_red_white BLINKING PART $no_style || $bold_black_red BOLD PART $no_style"
sleep 1
echo
