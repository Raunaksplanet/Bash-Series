#!/bin/bash
# ------------------------------------------- #
# Declearing array
declare -a arr
arr=("hello" "there" "how" "are" "you" "doing")

declare -a arr2
arr2[0]=1
arr2[1]=2
arr2[2]=3
# ------------------------------------------- #
# Associative Array
declare -A arr3
arr3=(
	[first]="apple"
	[second]="apple2"
	[third]="apple3"
	)
# ------------------------------------------- #
# printing array values
echo "arr1 first element is "   ${arr[0]}
echo "arr2 first element is "   ${arr2[0]}
echo "arr3 first element is "   ${arr3["first"]}
echo "arr1 last element is "   ${arr[-1]}
echo "arr1 all element is "   ${arr[*]}
# ------------------------------------------- #