## 1: The 'ls' command

# 'ls' -> 'list storage' which print all the directories and files in the working folder/directory
print_working_directory=$(pwd)
list_of_directories_and_files=$(ls) #make a list of all the files and directories of "current" directory/folder
echo "these are the directories and files: $list_of_directories_and_files"
echo "this is your current working directory: $print_working_directory"

# "relative_path" and "absolute_path":
# this is an example of 'absolute_path' (from'root' directory)-> "/home/emdad439/" [started with '/']
# this is an example of 'relative_path' (from 'current' directory)-> "home/emdad439/" [not-started with '/']
# 'relative_path' start working current directory. 
# if current_directory is "root/home/emdad439/Developing", then the relative_path "home/emdad439" 
# means=> the whole path-> "root/home/emdad439/Developing/home/emdad439"

# Now, going to the practical example->
# with 'absolute_path: /home/emdad439/Developing/':
directories_files_of_absolute_path=$(ls /home/emdad439/Developing/)
echo "files and directories of /home/emdad439/Developing/ folder: $directories_files_of_absolute_path"

# with 'relative_path: Programming/':
# If there is a folder called 'Programming' in 'pwd', then all the directories and files will be printed
directories_files_of_relative_path=$(ls Programming/) #trying to print all of: /home/emdad439/Developing/Bash_Scripting/Programming folder's elements

