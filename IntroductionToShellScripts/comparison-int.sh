#!/bin/bash

echo

# declare integers
NUM1=2
NUM2=2
if [ $NUM1 -eq $NUM2 ]; then
	echo "NUM1 is equal to NUM2"
else
	echo "NUM1 is NOT equal to NUM2"
fi

NUM3=5
NUM4=8
if [ $NUM3 -gt $NUM4 ]; then
	echo "NUM3 is greater than NUM4"
else
	echo "NUM3 is less than NUM4"
fi

echo
