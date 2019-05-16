#!/bin/bash

#Declare array with FOUR elements. Note use of quotes
ARRAY=( 'Debian Linux' 'Redhat Linux' Ubuntu Linux )

#All entries done from command line
args=("$@")

#Get number of elements in the array
ELEMENTS=${#ARRAY[@]}
echo

#Echo each element in array for loop
for (( i=0 ; i< $ELEMENTS ; i++)); do
	
	echo "For array element " $i " of " $ELEMENTS " the value is " ${ARRAY[${i}]}
	echo "For array element command line entry " $i " of " $ELEMENTS " the value is " ${args[$i]}
	echo

done

echo
