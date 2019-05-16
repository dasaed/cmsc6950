#!/bin/bash

# use predefined variables to access passed arguments
#echo arguments to the shell
echo
echo $1 $2 $3 " -> echo $1 $2 $3 -> Line 1" 
#Positional parameters $1,$2,$3, corresponding array representation is $@ and #array count $#

# We can also store arguments from bash command line in special array
args=("$@")
#echo arguments to the shell
echo
echo ${args[0]} ${args[1]} ${args[2]} ' -> args=("$@"); echo ${args[0]} ${args[1]} ${args[2]}  -> Line 2'

#use $@ to print out all arguments at once
echo
echo $@ ' -> echo $@  -> Line 3 using single quotes to print all arguments'
echo $@ " -> echo $@  -> Line 3 using double quotes to print all arguments, NO SUPRESSION"

# use $# variable to print out
# number of arguments passed to the bash script
echo
echo Number of arguments passed: $# ' -> echo Number of arguments passed: $#  -> Line 4'
echo
