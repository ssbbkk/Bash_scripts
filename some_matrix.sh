declare -A matrix
num_rows=5
num_columns=10

for ((i=1;i<=num_rows;i++)) do
    for ((j=1;j<=num_columns;j++)) do
        matrix[$i,$j]='#'
    done
done

for (( i=1; i<=45; i++ )); do
    echo ${matrix[@]}
done
