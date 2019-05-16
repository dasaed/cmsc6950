#!/bin/bash

# use backticks " ` ` " to execute shell command followed by text
echo
echo `uname -o` "-> uname command with backsticks works"
echo

# executing bash command without backticks
echo uname -o " -> uname command without backsticks does NOT work"
echo

echo "Use NOTHING to execute commands as in the shell"
echo
ls -la
echo
uname -o
mkdir MYDIR
