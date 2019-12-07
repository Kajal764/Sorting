#!/bin/bash -x 

declare -A Operations
declare -a OperationArray
echo "enter three inputs"
read a
read b
read c
Operations["op1"]=$(($a+$(($b*$c))))
Operations["op2"]=$(($(($a*$b))+$c))
Operations["op3"]=$(($c+$(($a/$b))))
Operations["op4"]=$(($(($a%$b))+$c))
echo ${!Operations[@]}
for(( i=1;i<=4;i++ ))
do
	OperationArray[$i]=${Operations["op$i"]}
done
echo "${OperationArray[@]}"
