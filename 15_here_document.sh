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
<nothing>This is a
	<tab>multiline
	<tab>text string
	<tab>with space/tab
 <space>before multiple lines.
<nothing>without any 'echo'
	<tab>command
	EndOfText

