#!/bin/bash
#Declare bash string variable
BASH_VAR="Bash Script"

clear

# echo variable BASH_VAR
echo "Echoing contents of variable BASH_VAR with no quotes at all"
echo $BASH_VAR

echo

# meta characters special meaning in bash is suppressed when using single quotes
echo "Echoing contents of variable BASH_VAR with single quotes both times"
echo "Note that single ' ' suppress meta character \$"
echo '$BASH_VAR "$BASH_VAR"'
echo
