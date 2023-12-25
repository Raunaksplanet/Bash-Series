#!/bin/bash

# Loops in Bash 
# ---------------------------- #
# 1. For 
: '
for i in range{1..100..5}
do
	commands

done
'
# ---------------------------- #
for i in {1..10..2}
do
	echo $i

done
# ---------------------------- #
str="Hello there this is raunak"

for r in $str
do
	echo $r
done
# ---------------------------- #
for ((i=1;i<=10;i++))
do
	echo $i

done
# ---------------------------- #
# 2. While
: '
while [ condition ]
do
	commands

done
' 
# Input from user
echo "Enter the number -"
read n

i=1

while [ $i -le 10 ]
do
	res=`expr $i \* $n`
	echo "$n * $i = $res"
	((++i))
 
done