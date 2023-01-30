#!/usr/bin/bash 
# we can use this also-> "#!/usr/bin/env bash"

arr=(
option1
option2
option3
)

choice=$1

if[$choice==$arr[0]]; then
  echo arr[0]
elif[$choice==$arr[1]]; then
  echo arr[1]
elif[$choice==$arr[2]]; then
  echo arr[2]
else; then
  echo Nothing Found!
fi
