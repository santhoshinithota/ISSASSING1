#!/bin/bash

> Q3.txt
echo please enter the file name with extension
read file
wc $file|awk '{print $1}' >>Q3.txt