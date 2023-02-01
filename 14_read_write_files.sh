#!/usr/bin/bash

### writing into file
echo "Some text" > file.txt
echo "created file with 'some text' inside... now, printing it 'cat file.txt'---->>>>"
cat file.txt
echo

### making the file empty
> file.txt
echo "made the file empty by '> file.txt'..... content of the file (cat file.txt)"
cat file.txt


### re-writing into file.txt
echo
echo "re-writing 'some text' and 'some more text' into file.txt"
echo "some text" > file.txt
echo "some more text" >> file.txt
echo "printing the content of file.txt with 'cat file.txt'--->"
cat file.txt


### reading the file.txt and just simply echo'ing it
echo
echo "Reading the file.txt and echo'int it's lines with line number---->"
i=1
while read f; do
	echo "Line $i: $f"
	((i++))
done < file.txt

