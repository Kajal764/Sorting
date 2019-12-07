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

for(( i=1;i<=4;i++ ))
do
	for(( j=1;j<=4;j++ ))
	do
		if [[ ${OperationArray[$i]} -gt ${OperationArray[$j]} ]]
		then
			temp="${OperationArray[$i]}"
			OperationArray[$i]="${OperationArray[$j]}"
			OperationArray[$j]=$temp
		fi
	done
done

echo "Descending order is"
echo "${OperationArray[@]}"

for(( i=1;i<=4;i++ ))
do
        for(( j=1;j<=4;j++ ))
        do
                if [[ ${OperationArray[$i]} -lt ${OperationArray[$j]} ]]
                then
                        temp="${OperationArray[$i]}"
                        OperationArray[$i]="${OperationArray[$j]}"
                        OperationArray[$j]=$temp
                fi
        done
done
echo "Ascending order is"
echo "${OperationArray[@]}"

