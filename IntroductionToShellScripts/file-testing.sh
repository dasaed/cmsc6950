#!/bin/bash

file1="./file"
file2=MYFILE

if [ -e $file1 ]; then
	echo "File exists"
else
	echo "File does not exist"
fi

echo

while [ ! -e $file2 ]; do
	# Sleep until file does exist/is created
	echo "Sleeping until file exists or is created!!"
	sleep 1
done
