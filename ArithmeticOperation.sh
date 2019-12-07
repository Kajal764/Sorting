#!/bin/bash -x 

echo "enter three inputs"
read a
read b
read c

echo $(($a+$b*$c))
echo $(($a*$b+$c))

