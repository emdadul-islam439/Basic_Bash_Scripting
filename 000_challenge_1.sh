#!/usr/bin/bash

green_color=$(tput setaf 2)
no_style=$(tput sgr0)
free_space=$(df -h / | grep -E "\/$" | awk '{print $4}')

echo -e "Quick system report for $green_color $USER $no_style"
echo "Current user: $USER" >> system_info.log

printf -v sys_type "\tSystem type:\t%s" "$MACHTYPE"
echo "$sys_type"; echo $sys_type >> system_info.log

printf -v bash_version "\tBash version:\t%s" "$BASH_VERSION"
echo "$bash_version"; echo $bash_version >> system_info.log

printf -v free_space "\tFree Space:\t%s" "$free_space"
echo "$free_space"; echo $free_space >> system_info.log

printf -v files_in_dir "\tFiles in dir:\t%s" "$(ls -l | wc -l)"
echo "$files_in_dir"; echo $files_in_dir >> system_info.log

printf -v generated_on "\tGenerated on:\t%s" "$(date +'%d-%m-%Y')"
echo "$generated_on"; echo $generated_on >> system_info.log

echo "$green_color A summary of this info has been saved to system_info.log $no_style"
