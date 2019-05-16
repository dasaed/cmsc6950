#!/bin/bash

#Declare bash string variable
BASH_VAR="Bash Script"

clear

# echo variable BASH_VAR
echo "echo contents of variable BASH_VAR using meta character $"
echo $BASH_VAR

echo
#when meta character "$" is escaped with "\" it will be read literally
echo "when meta character such us \$ is escaped with \ it will be read literally"
echo \$BASH_VAR

echo
# backslash has also special meaning and it can be suppressed with yet another "\"
echo "backslash has also special meaning and it can be suppressed with yet another \ "
echo "\\"
echo

# when meta character # is escaped with \ it is read literally
echo "when meta character # is escaped with \ it is read literally \# "
echo \#
echo

# EXCEPTION when meta character # is NOT escaped with \ , nothing happens
echo "when meta character # is NOT escaped with \ , nothing happens"
echo #

# EXCEPTION when meta character $ IS or is NOT escaped with \ , nothing happens
echo "when meta character $ is IS or IS NOT escaped with \ , same thing happens"
echo \$
echo $
