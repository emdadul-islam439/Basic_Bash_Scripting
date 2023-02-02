
#!/usr/bin/bash

##################################### NORMAL INPUT ##################################

### REFERENCE: see tldp.org's "Catching user input" chapter
### basic input reading
echo "What is your name?"
read name


### 'silent' input reading
echo "What is your password?"
read -s pass


### showing question and writing answer in one line using '-p'
read -p "What's your favorite animal? " animal


echo name: $name, pass: $pass, animal: $animal





################################### SELECTION INPUT ###############################

### remember to write 'break' statement when requirement satisfy, other-wise it will run infinite
### BUG: out-of-range input will also call the 'break' statement
select animal in "cat" "dog" "bird" "fish"
do
	echo "You selected $animal!"
	break
done



### another example:
select option in "cat" "dog" "quit"
do
	case $option in
		cat) echo "Cats like to sleep";;
		dog) echo "Dogs like to play";;
		quit) break;;
		*) echo "I'm not sure what that mean.";;
	esac
done


################################## MANDATORY INPUT TAKING ###########################

### if user don't give enough input, keep suggesting!
if [ $# -lt 3 ]; then
	cat <<- EOM
	This command requires three arguments:
	username, userid, and favorite number .
	eom
else
	# here is the main portion
	echo "Username: $1"
	echo "UserID: $2"
	echo "Favorite Number: $3"
fi



### keep asking for input
read -p "Favorite animal? " a
while [[ -z "$a" ]]; do
	read -p "I need an answer! " a
done
echo "$a was selected"



### assigning a default value if user dont' selct any
read -[ "Gavorite animal? [default: cat]" a
while [[ -z "$a" ]]; do
	a="cat"
done
echo "$a was selected"



### using regular expression to varify the input and keep asking if not varified
read -p "What year? [nnnn] " a
while [[ ! $a =~ [0-9]{4} ]]; do
	read -p "A year, please! [nnnn] " a
done
echo "Selected year: $a"


