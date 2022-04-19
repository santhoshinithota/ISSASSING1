#!/bin/bash
>Q4.txt
>temp.txt
>temp2.txt
read k
echo $k >> temp.txt
cat temp.txt|tr ',' '\n'>>temp2.txt
let i=0
while read line
do
arr[i]=$line
i=$((i+1))
done <temp2.txt
rm temp.txt
rm temp2.txt
let n=${#arr[@]}
flag=1;
for (( i = 0; i < $n-1; i++ ))
do
    flag=0;
    for ((j = 0; j < $n-1-$i; j++ ))
    do
        if [ ${arr[$j]} -gt ${arr[$j+1]} ]
        then
            temp=${arr[$j]};
            arr[$j]=${arr[$j+1]};
            arr[$j+1]=$temp;
            flag=1;
        fi
    done

    if [[ $flag -eq 0 ]]; then
          break;
    fi
done
echo "final array is: ${arr[*]}";