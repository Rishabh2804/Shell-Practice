# Write a script to calculate average of n numbers
read -p "Enter count of numbers: " n

sum=0
for ((i = 0; i < n; i++)); do
    read -p "Enter number: " num
    sum=$((sum + num))
done

average=$(expr $sum / $n)
# Alternative :
# average=$(($sum / $n))

echo "Sum of $n numbers is $sum"
echo "Average of $n numbers is $average"

# Important :
# 1. Use of expr :
#    expr 2 + 3 // 5
#    expr 2 \* 3 // 6
#    expr 2 / 3 // 0
#    expr 2 % 3 // 2
#    expr 2 - 3 // -1
# 2. `expr $a + $b` is same as $(expr $a + $b)
# 3. `expr $a + $b` is same as $(($a + $b))