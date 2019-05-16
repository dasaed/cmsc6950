#!/bin/bash

#Define bash global variable
#These variables are GLOBAL and can be used anywhere in this bash script
VAR1="global variable 1"
VAR2="global variable 2"

function bash {

	echo
	#Define bash LOCAL variable
	#This variable is local to bash function only
	local VAR1="local variable 1 inside function bash"
	VAR2="local variable 2 inside function bash"
	echo $VAR1
	echo $VAR2
}

echo
#Print global variable before executing function bash
echo "GLOBAL variable before executing function bash"
echo $VAR1  
echo $VAR2

#Execute function bash
bash

echo
# Note the bash global variable VAR1 did not change
# "local" is bash reserved word. But VAR2 did chage!! Be careful.
echo "GLOBAL variable after executing function bash"
echo $VAR1
echo $VAR2
