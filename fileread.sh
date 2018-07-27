#!/bin/bash
while read data
do
$HIVE_HOME/bin/hive -S -e "insert overwrite local directory '/home/manoj/Documents/shell-script/temp' row format delimited fields terminated by '\t' select * from manoj.$data"
cat /home/manoj/Documents/shell-script/temp/0000* >> /home/manoj/Documents/shell-script/output/$data.tsv
done < /home/manoj/Documents/shell-script/hivetable.txt
