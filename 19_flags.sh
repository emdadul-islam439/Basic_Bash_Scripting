#!/usr/bin/bash

### '-u' flag represents user-name, '-p' flag represents password-->
## './19_flags.sh -u emdad -p pass' command will output-> 'User: emdad / Pass: pass'
## also './19_flags.sh -p emdad -u pass' command will output-> 'User: pass / Pass: emdad	'
#while getopts u:p: option; do
#	case $option in 
#		u) user=$OPTARG;;
#		p) pass=$OPTARG;;
#	esac
#done

#echo "User: $user / Pass: $pass"
#echo
#echo


### ':' character after any letter-> like 'u:' specify that '-u' flag will have a value
### if ':' char is not after a letter, it tells that there won't be any value after that flag
#while getopts u:p:abcd option; do
#        case $option in 
#                u) user=$OPTARG;;
#                p) pass=$OPTARG;;
#		a) echo "Got the A flag!";;
#		b) echo "Got the B flag!";;
#		c) echo "Got the C flag!";;
#                d) echo "Got the D flag!";;
#        esac
#done
#
#echo "User: $user / Pass: $pass"
#echo
#echo


### ':' character after any letter-> like 'u:' specify that '-u' flag will have a value
### if ':' char is not after a letter, it tells that there won't be any value after that flag
### if ':' char is before all the flags, it gives the power to handle un-expected input
#while getopts :u:p:abcd option; do
#        case $option in 
#                u) user=$OPTARG;;
#                p) pass=$OPTARG;;
#                a) echo "Got the A flag! option=$option OPTARG=$OPTARG";;
#                b) echo "Got the B flag! option=$option OPTARG=$OPTARG";;
#                c) echo "Got the C flag! option=$option OPTARG=$OPTARG";;
#                d) echo "Got the D flag! option=$option OPTARG=$OPTARG";;
#		?) echo "We don't know about option=$option and OPTARG=$OPTARG";;
#        esac
#done
#
#echo "User: $user / Pass: $pass"
#echo
#echo


### ':' character after any letter-> like 'u:' specify that '-u' flag will have a value
### if ':' char is not after a letter, it tells that there won't be any value after that flag
### if ':' char is before all the flags, it gives the power to handle un-expected input
### trying to accept input of a,b,c,d at once
while getopts :u:p:abcd option; do
        case $option in 
                u) user=$OPTARG;;
                p) pass=$OPTARG;;
                a|b|c|d) echo "Got the non-arg flag! option=$option OPTARG=$OPTARG";;
                ?) echo "We don't know about option=$option and OPTARG=$OPTARG";;
        esac
done

echo "User: $user / Pass: $pass"
echo
echo
