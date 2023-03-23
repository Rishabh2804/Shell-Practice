# Write a shell script to calculate the sum of digits of given number
read -p "Enter a number: " num

sum=0
while [ $num -gt 0 ]; do
    dig=$((num % 10))
    sum=$((sum + dig))
    num=$((num / 10))
done

echo "Sum of digits of given number is $sum"