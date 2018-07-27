#!/bin/bash
data=['one','two','three','four','five']
for number in `seq 0 4`
do
echo $number
   # touch -p ~/Documents/shell-script/$data[$number]
   # cat $data[$number] >> $data[$number].csv
done
exit 0
