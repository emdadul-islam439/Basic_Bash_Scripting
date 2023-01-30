#!/usr/bin/bash 
# we can use this also-> "#!/usr/bin/env bash"

arr=(
option1
option2
option3
)

choice=$1

echo arr[0]=${arr[0]}, arr[1]=${arr[1]}
echo choice=$choice

if [ $choice == ${arr[0]} ]; then
  echo ${arr[0]}
elif [ $choice == ${arr[1]} ]; then
  echo ${arr[1]}
elif [ $choice == ${arr[2]} ]; then
  echo ${arr[2]}
fi

echo Last Line!

## INPUT:
# ./03_var_to_ifelse.sh option

## OUTPUT:
# arr[0]=option1, arr[1]=option2
# choice=option
# Last Line!
