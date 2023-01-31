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

