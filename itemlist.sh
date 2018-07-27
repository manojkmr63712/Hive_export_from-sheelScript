#!/bin/bash
data="one two three four five"
for number in $data
do
touch ~/Documents/shell-script/$number
cat ~/Documents/shell-script/$number >> ~/Documents/shell-script/$number.csv
rm ~/Documents/shell-script/$number
done

