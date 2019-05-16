#!/bin/bash

# We have used \n as a new line, \x40 is hex value for @ # and \56 is octal value for .
echo
echo "We have used \x40 is $hex value for @ echo and \56 is octal value for . and \n as a new line"
echo

echo $'email: web\x40linuxconfig\56org\n'

echo $'web: www\56linuxconfig\56org\n'

echo "alert (bell twice)" $'\a\a' "horizontal tab three times" $'\t\t\t' "vertical tab once" $'\v'

var=VARIABLE
echo "Note that double quote does not affect \" and $var and `date`"
echo

echo End
