#!/bin/bash
while read data
do
tab=$(echo $data | tr "|" "\n")
echo $tab
done < /home/manoj/Documents/shell-script/filetask/hivetable.txt
