#!/bin/bash
: '
Strings in bash
'

# ---------------------------- #
echo "Enter first string"
read str1

echo "Enter second string"
read str2

if [ "$str1" == "$str2" ]
then
	echo "---strings are equal---"
else
	echo "---strings are not equal---"	 
fi
# ---------------------------- #
# Checking if string is empty (-z)
# Checking if string is not empty (-n)

sting=""
sting2="hehe"
if [ -z $sting2 ]
then
	echo "---strings is empty---"
else
	echo "---strings is not empty---"	 
fi

sting=""
sting2="hehe"
if [ -n $sting2 ]
then
	echo "---strings is not empty---"
else
	echo "---strings is empty---"	 
fi
# ---------------------------- #