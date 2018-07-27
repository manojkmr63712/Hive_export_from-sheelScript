#!/bin/bash
while read data
do
tablename="$(cut -d'|' -f1 <<<"$data")"
dbname="$(cut -d'|' -f3 <<<"$data")"
$HIVE_HOME/bin/hive -S -e "insert overwrite local directory '/home/manoj/Documents/shell-script/temp' row format delimited fields terminated by '\t' select * from $dbname.$tablename"
cat /home/manoj/Documents/shell-script/temp/0000* >> /home/manoj/Documents/shell-script/output/$tablename.tsv
done < /home/manoj/Documents/shell-script/filetask/hivetable.txt
