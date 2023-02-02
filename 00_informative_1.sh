#!/usr/bin/bash

############### printing all the shells available in the system ##############
## THE COMMAND: "cat /etc/shells"
echo "all the shell files--->"
cat /etc/shells
echo
echo
# OUTPUT: 
# /etc/shells: valid login shells
# /bin/sh
# /bin/bash
# /usr/bin/bash
# /bin/rbash
# /usr/bin/rbash
# /bin/dash
# /usr/bin/dash
# /usr/bin/sh



################### Writing into files ######################
echo "adding content to the new file----> input_file.txt"
echo "hello, hi how are you?" >> input_file.txt
echo
echo "Printing the content of the file: input_file.txt----->"
cat input_file.txt
echo
echo "-------------------------"
echo "add input into the file: input_file.txt [press ctrl+d to exit]"
cat >> input.txt





########################## commenting ###########################

## MULTI-LINE COMMENT-> Syntex: ": '      '"
:  '
This is a 
multi
line comment.
'




########################## about if-else ##########################
echo
echo "output from new styled if-else statement"
age=10

if ["$age" -gt 18 ] && [ "$age" -lt 40 ]
then
	echo "Age is correct"
else
	echo "age is not correct"
fi


## slightly changed if-else
echo
echo "output from slightly new styled if-else statement"
age=10

if [[ "$age" -gt 18 && "$age" -lt 40 ]]
then
        echo "Age is correct"
else
        echo "age is not correct"
fi


## slightly changed if-else
echo
echo "output from another new styled if-else statement"
age=10

if [ "$age" -gt 18 -a "$age" -lt 40 ]
then
        echo "Age is correct"
else
        echo "age is not correct"
fi

