#!/bin/bash

> Q3.txt
echo please enter the file name with extension
read file
awk '{print "Line number:"NR" " NF}' $file>>Q3.txt