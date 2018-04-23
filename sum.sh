#!/bin/bash

declare -i SUM=0

while read X; do
	SUM+=$X
done < <(sed -E s/^0+// sample_data.txt)

printf "%d \n" $SUM


# or SUM+=$((10#$X))		10#$X is a decimal notation of number under X
# or SUM=`expr $SUM + $X` 	expr always treats it's argument as a decimal
