#!/bin/bash

# Reading the sentences.txt into an integer indexed array
declare -a array

while read x; do
    array[$i]=$x
    (( i+=1 ))
done < sentences.txt

#i=0
#for f in `cat sentences.txt`; do 
#    array[$i]=$f
#    ((i+=1))
#done

echo "What do you want to display?"
echo "1 - display the array"
echo "2 - display the number of elements in array"
echo "3 - display the first 3 words of each element in array"

echo "Option: "
read option

if [[ $option == "1" || $option == "2" || $option == "3" || $option == "4" ]]; then
    echo
    a_values=${array[@]}
    a_keys=${!array[@]}
    a_length=${#array[@]}
    a_=$(($a_length-1))

    case $option in
        1) for (( i=0;i<=4;i++ )); do echo "${array[$i]}";done;;
        2) echo "Display the number of elements in array: " $a_length;;
        3) for (( i=0;i<=4;i++ )); do echo ${array[$i]} | awk '{ print $1 " " $2 " " $3 }'; done;;
        *) echo "Wrong option";;
    esac

    echo
    echo '--------------------------'
    echo "Done!"
    echo
else
    echo
    echo "Wrong option!"
fi
