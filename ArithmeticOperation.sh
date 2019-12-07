#!/bin/bash -x 

echo "enter three inputs"
read a
read b
read c

echo "operation1 $(($a+$b*$c))"
echo "operation2 $(($a*$b+$c))"
echo "operation3 $(($c+$a/$b))"
echo "operation4 $(($(($a%$b))+$c))"

