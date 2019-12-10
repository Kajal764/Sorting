#!/bin/bash -x 

declare -A operations
declare -a operationArray

echo "Enter Three Inputs"
read a
read b
read c

operations["op1"]=$(( $a + $b * $c ))
operations["op2"]=$(( $a * $b + $c ))
operations["op3"]=$(( $c + $a / $b ))
operations["op4"]=$(( $a % $b + $c ))

for(( i=1;i<=4;i++ ))
do
	operationArray[$i]=${operations["op$i"]}
done

echo "${operationArray[@]}"

function getDescArr(){
	echo "Descending Array is"
	for(( i=1;i<=4;i++ ))
	do
		echo ${operationArray[$i]}
	done | sort -nr
}

function getAscArr(){
	echo "Descending Array is"
        for(( i=1;i<=4;i++ ))
        do
                echo ${operationArray[$i]}
        done | sort -n
}
     
getDescArr            
getAscArr
