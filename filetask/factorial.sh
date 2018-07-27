#!/bin/sh

mysqoop()
{
echo "it is an sqoop function"
echo $datafun
if [ $datafun = 'import' ]
echo $dbtype
echo $dbhost
echo $dbname
echo $username
echo $passwd
}
myhive()
{
echo "in to hive function"
}
if [ $1 = 'sqoop' ]
then
datafun=$2
dbtype=$3
dbhost=$4
dbname=$5
username=$6
passwd=$7
mysqoop
elif [ $1 = 'hive' ]
then
myhive
else
echo "use hive r sqoop"
fi
