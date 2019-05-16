#!/bin/bash

#Declare bash string variable
BASH_VAR="Bash Script"

clear

# echo variable BASH_VAR
echo "Contents of variable BASH_VAR"
echo $BASH_VAR
echo

# Suppress meta characters special meaning using double quotes. Exceptions "$", "\" and "`"
echo "Suppress a meta character special meaning using double quotes. Exceptions \$, \\ and \` (backslash is for printing only here)"
echo "It's $BASH_VAR and "$BASH_VAR" regardless of double quotes"
echo

# Using backticks to get command line functionality"
echo "Using backticks to get date and time from command line:" "`date`"
echo "Using backticks to get working dir from command line: `pwd`"
echo 
