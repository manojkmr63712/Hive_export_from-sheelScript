#!/bin/bash
while IFS='' read -r line || [[ -n "$line" ]]; do
    echo "Text read from file: $line"
done < /home/manoj/Documents/shell-script/hivetable.txt

