# Write a script to print the multiplication table of a given number.
echo "Enter a number"
read n

# for loop :
for ((i = 1; i <= 10; i++)); do
    echo "$n * $i = $((n * i))"
    # Alternative 1:
    # echo "$n * $i = $(($n * $i))" // no need to include $ inside (())

    # Alternative 2:
    # echo "$n * $i = `expr $n \* $i`"
done

# while loop :
i=1
while [ $i -lt 10 ]; do
    echo "$n * $i = $((n * i))"
    ((i++))
done
# Created by : Rishabh Gupta 23-03-2023 14:59:00 IST
