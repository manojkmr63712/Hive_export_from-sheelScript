#!/bin/bash

line=$(head -n 1 /home/manoj/Documents/shell-script/four.csv)
arr=$(echo $line | tr "," "\n")
data=()

for x in $arr; do
    data+=($x" string")
done
echo ${data[@]}
