# Write a shell script to print the factorial of a number.
read -p "Enter a number: " num

fact=1
for ((i = 1; i <= num; ++i)); do
    fact=$((fact * i))
done

echo "Factorial of $num, $num! = $fact"
