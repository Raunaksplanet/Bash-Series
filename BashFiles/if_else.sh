#!/bin/bash

# ------------------------------- #
: '
syantax:
if [Condition/expression]
then
	commands
else
	commands
fi
'
# ------------------------------- #
echo "Ente password: "
read pass

if [ $pass == "secret" ]
then

	echo "Login Successfully !!!!"
else
	echo "Login Not Successfully !!!!"
fi
# ------------------------------- #
# ------------------------------- #
echo "Ente Number: "
read num

if [ $num -lt 100 ]
then

	echo "$num is less then 100"
else
	echo "$num is not less then 100"
fi
# -lt (less then)
# -le (less then & equal too)
# -gt (greater then)
# -ge (greater then & equal too)
# ------------------------------- #
# Simple program to find Greater in 3 values

echo "Enter first number: "
read first

echo "Enter Second number: "
read Second

echo "Enter Third number: "
read Third


if [ $first -gt $Second ]
then

	if [ $first -gt $Third ]
	then 

		echo $first "is greater"

	else

		echo $Third "is greater"
	fi

else

	if [ $Second -gt $Third ]
	then

		echo $Second "is greater"

	else

		echo $third "is greater"

	fi
fi
# ------------------------------- #