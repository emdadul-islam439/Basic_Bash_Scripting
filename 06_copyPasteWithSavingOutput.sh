#!/usr/bin/bash

### printing current folder
echo "Current folder: $(pwd)"
echo 
sleep 1


### go to Test folder
echo "going to Test folder..."
sleep 1
cd Test
echo "Current folder: $(pwd)"
echo


### make CopyPastingFolder in the PARENT DIRECTORY
echo "creating CopyPastingFolder into parent folder..."
sleep 2
echo "Before creating, the files/folder of Parent Folder->"
ls ../
echo
echo

sleep 2
mkdir ../CopyPastingFolder
echo "After creating, the files/folder of Parent Folder->"
ls ../
echo
echo


### create multiple files in current folder
sleep 2
echo "Creating multiple files in Current Folder..."
sleep 1
echo

echo "Before creating, the directory->"
ls
echo
echo

sleep2
touch {00..20}_test_file
echo "After creating, the directory->"
ls
echo
echo


### making all the files started with '0' 
# as non-readable, non-writable, non-executable
sleep 2
echo "making some file non-read_write_and_executable"
echo
sleep 1
echo "Before: details of the files->"
ls -l
echo
echo

sleep 2
chmod 000 0*
echo "After: details of the files->"
ls -l
echo
echo


### copy-paste all the files to ../CopyPastingFolder
# and save the success-error status into two files
# Hint: the files started with '0' won't be copy-pasted
sleep 2
echo "Copy-Pasting all files into '../CopyPastingFolder' directory"
sleep 1
echo "Hint: the files started with '0' won't be copy-pasted"
echo
sleep 1
echo "Success log will be found into '../success.txt' file and"
sleep 1
echo "Error log will be found into '../error.txt' file"
sleep 1
echo "Both succuess and error will be into '../success-error.txt' file"
cp -v * ../CopyPastingFolder 1>../success.txt 2>../error.txt &>../success-error.txt
sleep 2
echo "Copy-Pasting completed!!"


### details of the '../CopyPastingFolder' folder
sleep 2
echo "Details of '../CopyPastingFolder':"
ls ../CopyPastingFolder
echo
echo


### opening "success.txt" file
sleep 2
echo "Details of success.txt file:"
sleep 1
cat ../success.txt
echo
echo


### opening "error.txt" file
sleep 2
echo "Details of error.txt file:"
sleep 1
cat ../error.txt
echo
echo


### opening "success-error.txt" file
sleep 2
echo "Details of success-error.txt file:"
sleep 1
cat ../success-error.txt
echo
echo



######## REMOVING PORTION STARTED................

### Before removing, changing the permission into-> writable
# Because there will be errors. like->
# rm: remove write-protected regular empty file '00_test_file'? y
# rm: remove write-protected regular empty file '01_test_file'? y.
# ...

sleep 2
echo "Changing the permission into: readable-writable for the user-only"
echo "Before change: permission status of files starting with '0' are:"
ls -l
echo
echo

sleep 2
chmod * 600 0*
echo "After change: "
ls -l
echo
echo


### removing all the relevant files (not folder) from the directories
sleep 1
echo .
sleep 1
echo ...
sleep 1
echo .....
sleep 2
echo "removing all the experiment related files (not folders)..."
rm *
rm ../CopyPastingFolder/*
echo
echo "After removing, 'Test' folder is->"
ls
echo

sleep 2
echo "After removing, '../CopyPastingFolder' folder is->"
ls ../CopyPastingFolder
echo


### Bye Bye!!
sleep 2
echo
echo "----------------------------------"
echo "|           Bye Bye!!	        |"
echo "----------------------------------"
