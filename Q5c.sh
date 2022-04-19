#!/bin/bash
read string
let len=length/2
for((i=len;i<length;i++))
do
echo -n ${arr[i]}
done
for((i=len-1;i>=0;i--))
do
echo -n ${arr[i]}
done