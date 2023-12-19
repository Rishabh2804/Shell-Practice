# Write a shell script to implement priority scheduling algorithm.
read -p "Enter the number of process: " n

declare -a arrivalTime
declare -a burstTime

read -p "Enter arrival times for all process : " -a arrivalTime
read -p "Enter burst times for all process : " -a burstTime
read -p "Enter priority for all process : " -a priority

printf '| %3s ' "P#"
printf '| %3s ' "AT"
printf '| %3s ' "BT"
printf '| %3s ' "Pr"
printf '| %3s ' "ST"
printf '| %3s ' "CT"
printf '| %3s ' "TA"
printf '| %3s ' "WT"
printf '| %3s \n' "RT"

currTime=${arrivalTime[0]}

for ((i = 0; i < n; ++i)); do
    if [ ${arrivalTime[i]} -gt $currTime ]; then
        currTime=${arrivalTime[i]}
    fi

    startTime=$currTime

    completionTime=$(expr $startTime + ${burstTime[i]})
    # Alternative :
    # completionTime=$(($startTime + ${burstTime}))

    turnAroundTime=$(expr $completionTime - ${arrivalTime[i]})
    waitingTime=$(expr $turnAroundTime - ${burstTime[i]})
    responseTime=$(expr $startTime - ${arrivalTime[i]})

    currTime=${completionTime}

    printf '| %3s ' "P$i"
    printf '| %3s ' "${arrivalTime[i]} "
    printf '| %3s ' "${burstTime[i]} "
    printf '| %3s ' "${priority[i]} "
    printf '| %3s ' "$startTime "
    printf '| %3s ' "$completionTime "
    printf '| %3s ' "$turnAroundTime "
    printf '| %3s ' "$waitingTime "
    printf '| %3s \n' "$responseTime "
done
