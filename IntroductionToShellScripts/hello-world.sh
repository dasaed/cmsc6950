#! /bin/bash 

# declare STRING variables

STRING1="Hello World" # NOTE no space around = sign

STRING2="My working directory is:"

echo

#print variable on a screen

echo "Print STRING1" $STRING1

echo "Dollar sign $ returns value of variable"

# -e in echo enables interpretation of backslash character. No -e results in NO newline
echo -e "\nPrint STRING2 and working directory\n"$STRING2 PWD 

echo
