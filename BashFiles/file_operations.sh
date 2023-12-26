#!/bin/bash

# Example.txt is used for all the operations

file_content=`cat example.txt`
echo $file_content

echo "-----or-----"
echo "$file_content"

echo "-----or-----"
echo $(< example.txt)

echo "-----or-----"
while read file
do
	echo $file
done < example.txt

echo "-----or-----"
: '
-f return true if file exists
-d return true if folder exists 
-e return true if file/folder exists 
'
file_name=$1

if [ -f $file_name ]
then
	echo "File Exists"
else
	echo "File doesn't Exists"
fi


while read file
do
	echo $file
done < $file_name


echo "-----or-----"
read -p "Enter more names " names
echo "$names" >> example.txt
cat example.txt