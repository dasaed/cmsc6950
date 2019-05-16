#!/bin/bash

echo `clear`

directory1="./BashScripting"

# bash check if directory exists
if [ -d $directory1 ]; then
	echo "Directory $directory1 exists"
else 
	echo "Directory $directory1 does not exist"
fi 

echo
directory2="./test"
if [ -d $directory2 ]; then
	echo "Directory $directory2 exists"
else 
	echo "Directory $directory2 does not exist"
fi 

echo

# Declare variable choice and assign INITIAL value 4
choice=4

# Print to stdout
echo "1. Bash"
echo "2. Scripting"
echo "3. Tutorial"
echo -n "Please choose a word [1,2 or 3] -> "

# Loop while the variable choice is equal 4
while [ $choice -eq 4 ]; do

	# read user input
	read choice

	# bash nested if/else
	if [ $choice -eq 1 ] ; then
		echo "You have chosen word: Bash"
	else
		if [ $choice -eq 2 ] ; then
			echo "You have chosen word: Scripting"
		else
			if [ $choice -eq 3 ] ; then
				echo "You have chosen word: Tutorial"
			else
				echo "Please make a choice between 1-3 -> "
				echo "1. Bash"
				echo "2. Scripting"
				echo "3. Tutorial"
				echo -n "Please choose a word [1,2 or 3] -> "
				choice=4
			fi
		fi
	fi

done
