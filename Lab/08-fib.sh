# Write a shell script to print the Fibonacci series upto n terms.
read -p "Enter number of terms of the Fibonacci series to be printed: " n

if [ $n -le 0 ]; then
    echo "Invalid input"
    exit 1
elif [ $n -le 1 ]; then
    echo n
    exit
fi

first=0
second=1
third=1

echo "Fibonacci series: "
while [ $n -ge 0 ]; do
    echo -n "$first "
    first=$second
    second=$third
    third=$((first + second))

    ((n--))
done
