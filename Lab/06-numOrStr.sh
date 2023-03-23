# Write a script to check whether input is a number or a string.
read -p "Type a number or a string: " input
if [[ $input =~ ^[+-]?[0-9]+$ ]]; then
    echo "Input is an integer."
else
    echo "Input is a string."
fi
