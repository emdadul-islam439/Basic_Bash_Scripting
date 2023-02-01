#!/usr/bin/bash

### printing multi-line output without echo'ing in multiple times---->
cat << EndOfText
This is a
multiline
text string
without any 'echo'
command
EndOfText


### adding a '-' sign will remove any space/tab before every every line---->
echo
echo
cat <<- EndOfText
	This is a
	multiline
	text string
	with space/tab
before multiple lines.
	without any 'echo'
	command
	EndOfText

