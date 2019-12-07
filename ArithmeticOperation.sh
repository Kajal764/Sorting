#!/bin/bash -x 

Declare -A Operations
echo "enter three inputs"
read a
read b
read c

Operations["op1"]=$(($a+$(($b*$c))))
Operations["op2"]=$(($(($a*$b))+$c))
Operations["op3"]=$(($c+$(($a/$b))))
Operations["op4"]=$(($(($a%$b))+$c))


