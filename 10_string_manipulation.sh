#!/usr/bin/env bash

############## STRING MANIPULATION: BASICS #############
#
#
#######################################################

### basic con-catenation
sleep 1
echo "a='hello'"
a='hello'
echo
sleep 1
echo "b='world'"
b='world'
echo
sleep 2
echo "Con-catenation: c=\$a\$b --->"
sleep 1
c=$a$b
echo "c=$c"
echo
sleep 2


### length of string
echo "Length of 'a': echo \${#a}-->${#a}"
sleep 1
echo "Length of 'b': echo \${#b}-->${#b}"
sleep 1
echo
echo

### Printing/saving a 'range-of-string'
sleep 1
echo "echo \${c:3} --> ${c:3}"
sleep 1
d=${c:3}
echo "first: d=\${c:3} then: echo \$d--> $d"
echo
sleep 2
echo "echo \${c:3:4} --> ${c:3:4}"
echo
sleep 2 
echo "echo \${c: -4} --> ${c: -4}" 
echo 
sleep 2 
echo "echo \${c: -4:3} --> ${c: -4:3}" 
echo 


### pattern matching
echo
echo
sleep 2
fruit="apple banana banana cherry"
echo "fruit='apple banana banana cherry'"
echo
sleep 1
echo "echo \${fruit/banana/durian} -->"
echo ${fruit/banana/durian}
echo
sleep 2
echo "echo \${fruit//banana/durian} -->"
echo ${fruit//banana/durian}
echo
sleep 2
echo "echo \${fruit/#apple/durian} -->"
echo ${fruit/#apple/durian}
echo
sleep 2
echo "echo \${fruit/#banana/durian} -->"
echo ${fruit/#banana/durian}
echo
sleep 2

echo "echo \${fruit/%cherry/durian} -->"
echo ${fruit/%cherry/durian}
echo
sleep 2
echo "echo \${fruit/%banana/durian} -->"
echo ${fruit/%banana/durian}
echo
sleep 2
echo "echo \${fruit/c*/durian} -->"
echo ${fruit/c*/durian}
echo
sleep 2



