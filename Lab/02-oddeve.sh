# Write a script to check whether given number is odd or even
echo "Enter a number"
read n

if [ $(expr $n % 2) -eq 0 ]; then
    # Alternative :
    # if [ $((n % 2)) -eq 0 ]; then // no need to include $ inside (( ))
    echo "$n is even"
else
    echo "$n is odd"
fi

# Created by : Rishabh Gupta 23-03-2023 14:18:00 IST
