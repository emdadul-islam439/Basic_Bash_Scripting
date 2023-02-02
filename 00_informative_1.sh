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


## OR-statement if-else
echo
echo "output from another new styled if-else statement"
age=10

if [ "$age" -gt 18 -o "$age" -lt 40 ]
then
        echo "Age is correct"
else
        echo "age is not correct"
fi


## Read from standard input
# if any file us given as an argument -> read from it
# if any file name is not given-> start prompt to receive multi-line input (terminated by ctrl+d)
echo
cat <<- Comment
	Starting to read input from stdin-->
	(if any file name is not given as argument, 
	will take input from prompt (terminate using ctrl+d)
Comment

while read line
do
	echo "$line"
done < "${1:-/dev/stdin}"


## New styled string comparison
# check lexicographically smaller string

echo "enter 1st string for comparison"
read str1
echo "enter 2nd string for comparison"
read str2

if [ "$str1" \< "str2" ]; then
	echo "str1 is smaller"
elif [ "$str1" \> "$str2" ]; then
	echo "str2 is smaller"
else
	echo "both str1 and str2 are equal"
fi


## make first char of string Capital (single ^),
## make all char of string Capital (double ^^)
echo
echo "making first letter capital of str1---> ${str1^}"
echo "making all letters capital of str1---> ${str1^^}"
echo "making 'a' as capital--->${str1^a}"


### doing arithmetic operations with 'expr' sign
echo
echo
n1=4
n2=20
echo $(expr $n1 + $n2)
echo $(expr $n1 - $n2)
echo $(expr $n1 \* $n2) #expr don't recognize '*' character normally
echo $(expr $n1 / $n2)
echo


### convert HEX number into DEC
hex_num="FFFF"
echo -n "The decimal value of $hex_num is: "
echo "obase=10; ibase=16; $hex_num" | bc


### different types of array operations
car=('BMW' 'Toyota' 'Honda' 'Rover')
echo 
echo "printing different array related info"
echo "${car[@]}"
echo "${car[1]}"
echo "${!car[@]}"
echo "${#car[@]}"
echo
unset car[2]
echo "${car[@]}"
echo


### checking if a directory/file exists
echo "enter a file/directory name: "
read file_or_directory_name

if [[ -d $file_or_directory_name || -f $file_or_directory_name ]]; then
	if [ -d $file_or_directory_name ]; then
		echo "A directory named $file_or_directory exists!"
	fi
	
	if [ -f $file_or_directory_name ]; then
		echo "A file named $file_or_directory exists!"
	fi
else
	echo "No file or directory named $file_or_directory_name exists!"
fi



### some 'grep' related commands
# grep $term_to_search $file_to_search
#
# case_insensitive_flag="-i"
# grep $case_insensitive_flag $term_to_search $file_name
#
# enable_line_numbering_flag="-n"
# grep $case_insensitive_flag $enable_line_numbering_flag $term_to_search $file_to_search
#
# only_show_line_count_flag="-c"
# grep $case_insensitive_flag $enable_line_numbering_flag $only_show_line_count_flag  $term_to_search $file_to_search
#
# all_lines_without_search_term_flag="-v"
# grep $case_insensitive_flag $enable_line_numbering_flag $all_lines_without_search_term  $term_to_search $file_to_search




### some "awk" related commands
# awk "{print}" $fileName
# 
# print_all_lines_containing_this_word="linux"
# awk "/$print_all_lines_containing_this_word/ {print}" $fileName
#
# term_number_to_print="2"
# awk "/$print_all_lines_containing_this_word/ {print $term_number_to_print}" $fileName
#
# term_no_1="3"
# term_no_2="5"
# term_no_3="1"
# awk "/$print_all_lines_containing_this_word/ {print $term_no_1,$term_no_2,$term_no_3}" $fileName



### some "sed" related commands
# substitute_command="s"
# term_to_be_replaces="i"
# replacing_term="I"
# replace_all_found_terms_command="g" 
#
# just replacing the first found term:
# cat fileName.txt | sed '$substitue_command/$term_to_be_replaced/$replacing_term/'
#
# removing all found terms:
# sed '$substitue_command/$term_to_be_replaced/$replacing_term/$replace_all_found_terms_command' fileName.txt 
# 
# another way (not modify the file, just ouput): 
# sed '$substitue_command/$term_to_be_replaced/$replacing_term/' fileName.txt 
#
# saving into another file:
# sed '$substitue_command/$term_to_be_replaced/$replacing_term/' fileName.txt > backup.txt
# 
# changing the input file:
# sed '$substitue_command/$term_to_be_replaced/$replacing_term/' fileName.txt > fileName.txt
# Or,
# sed -i '$substitue_command/$term_to_be_replaced/$replacing_term/' fileName.txt
# 



### Enable Debugging:
# enable while executing the file:
# bash -x ./bash_script.sh
#
# enable inside the file:
# #!/usr/bin/bash -x
#
# from_line to to_line debugging:
# at line-12: set -x (only this command, nothing else in this line)
# at line-20: set +x (only this command, nothing else in this line)
