#!/bin/bash
#Some basic for loops
for num in {1..5}
do
    echo ${num}
done

names="ahmet mehmet ayşe"
for name in ${names}
do
    echo "${name}"
done

counter=10
while [[ $counter -le 15 ]]
do
    echo $counter
    ((counter++))
done

#until loop will run commands within the loop until the condition becomes true.
count=1
until [ $count -gt 10 ]
do
    echo $count
    ((count++))
done

#continue-break keywords in the loops functions as similar.
num=1
while [ $num -lt 10 ]
do
    if [ $num -eq 5 ]
    then
        break
    fi
    ((num++))
done
echo "loop completed."