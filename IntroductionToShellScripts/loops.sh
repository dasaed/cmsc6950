#!/bin/bash

echo
echo "Using for loop"
# bash for loop
for VARIABLE in 0 1 2 3 4 5  6 7 8;
do
	echo $VARIABLE
done

echo
echo "Using while loop"
COUNT=6
# bash while loop
while [ $COUNT -gt 0 ]; 
do
	echo Value of count is: $COUNT
	let COUNT=COUNT-1 # WHAT HAPPENS IF I REMOVE let???
done

echo
echo "Using until loop"
COUNT=0
# bash until loop
until [ $COUNT -gt 5 ]; 
do
	echo Value of count is: $COUNT
    let COUNT=COUNT+1 # WHAT HAPPENS IF I REMOVE let???
done 
