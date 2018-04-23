#!/bin/bash
# Some simple script for reading the lines in file into an array

function countriesinfile {

declare -A array
while read x; do
	array[$i]="$x"	
	((i+=1))
done < countries.txt

echo
echo "The countires in selected range: "

for (( i=$1; i<=$2; i++ )); do
	echo "$i - ${array[$i]}"
done
}

# countriesinfile $1 $2

# declare -a <arrayname> - integer indexed array eg. array[1]="hello"
# declare -a <arrayname> - associative indexed array eg  array["hello]"="world"

declare -a array1=(`cat countries.txt | grep -vi a`)
echo ${array1[@]}
