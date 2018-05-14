#!/bin/bash
# Some simple script for reading the lines in file into an array

declare -a array
i=1
while read x; do
	array[$i]="$x"	
	((i+=1))
done < countries.txt

echo "Provide the start number: "
read a

echo "Provide the end number: " 
read b
echo
echo "The array countires in selected range: "

for (( i=$a; i<=$b; i++ )); do
	echo "$i - ${array[$i]}"
done

# ${#array[@]} - the length of an array
# $(!array[@]) - the keys of an array
# ${array[@]} - the values of an array

#for f in ${array[@]}
#do
#	echo $f
#done 

