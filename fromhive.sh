#!/bin/bash
data="census tb1 tb2"
for number in $data
do
$HIVE_HOME/bin/hive -S -e "insert overwrite local directory '/home/manoj/Documents/shell-script/temp' row format delimited fields terminated by '\t' select * from manoj.$number"
cat /home/manoj/Documents/shell-script/temp/0000* >> /home/manoj/Documents/shell-script/output/$number.tsv
done

