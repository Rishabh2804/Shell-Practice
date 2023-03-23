# Write a script to find the greatest number among three numbers.
echo "Enter 3 numbers"
read a b c

if [ $a -gt $b ] && [ $a -gt $c ]; then
    echo "$a is greatest of all"
elif [ $b -gt $c ]; then
    echo "$b is greatest of all"
else
    echo "$c is greatest of all"
fi

# Created by : Rishabh Gupta 23-03-2023 14:38:47 IST
