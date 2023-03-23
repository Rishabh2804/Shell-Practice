# Write a script to check whether given number is prime or not.
echo "Enter a number"
read num

isprime=1
for ((i = 2; i * i <= num; i++)); do
    if [ $((num % i)) -eq 0 ]; then
        isprime=0
        break
    fi
done

if [ $isprime -eq 1 ]; then
    echo "$num is prime"
else
    echo "$num is not Prime"
fi
