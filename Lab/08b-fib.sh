# Write a shell script to find nth Fiboanacci term.

read -p "Enter the value of n: " n

foo( num ) {
    if [ $num -le 0 ]; then
        echo "Invalid input"
        exit 1
    elif [ $num -le 1 ]; then
        echo $num
        exit
    fi

    first=0
    second=1
    third=1

    while [ $num -ge 0 ]; do
        first=$second
        second=$third
        third=$((first + second))

        ((num--))
    done

    echo $first
}
