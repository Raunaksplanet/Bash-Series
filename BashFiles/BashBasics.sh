#!/bin/bash

# 1.This is Single Line comment
# ------------------------------ #
<<comm
2. this is multi
   line comment
comm
# ------------------------------ #
: '
3. This is also a 
   multi line comment
'
# ------------------------------ #
name="Raunak"
echo "Hello $name"
# ------------------------------ #
# InLine Comment
command=$(pwd)
command2=`whoami`

echo "This Command print working directory: $command"
echo "This Command print host $command2"
# ------------------------------ #

# User input (stop next line character)
echo -n "Enter name: " 
read naam
echo "Your Name is $naam"
# ------------------------------ #
echo "Sleep function is....."
sleep 3
echo "Working....."
sleep 2 
echo "Are you seeing any difference ?"
# ------------------------------ #
