#!/bin/bash

file="quotes2.txt"
> speech.txt
#while read -r line
#do
awk -F~ '{print $2 " once said, \"" $1 "\""}' quotes2.txt>>speech.txt
#done <"$file"
