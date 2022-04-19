#!/bin/bash
read string
let length=${#string}
for((i=0;i<length;i++))
do
arr[i]=${string:length-1-i:1}
done
for((i=0:i<length;i++))
do
echo -n ${arr[i]}
done
