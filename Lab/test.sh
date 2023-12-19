curr=-1
for ((i = 1; curr <= 1000000000; ++i)); do
    ((count6++))
    ((curr += 6))

    if [ $(expr $count6 % 5) == 0 ]; then
        ((count7++))
        count6=0
        ((curr += 1))
    fi

    if [ $(expr $count7 % 5) == 0 ]; then
        ((count8++))
        count7=0
        ((curr += 1))
    fi

    if [ $(expr $count8 % 5) == 0 ]; then
        ((count9++))
        count8=0
        ((curr += 1))
    fi
done
