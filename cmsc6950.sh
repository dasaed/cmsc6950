#!/bin/bash
#This file is meant to be my notes for the CMSC6950 notes
#I will only mention commands and flags I didn't alreay know
date "+Today is %A %B %d and the time is %T %y"
date --date="yesterday"
date --date="5 days ago" "+%A"
date --date="4 months ago" 
date --date="next mon"
date --date="2 day" #after 2 days
date --date="tomorrow"

echo "Using the find command"
find -name bashrc
find -name "bashrc"
find ~ -size +10m # files larger than 10 M
find ~ -size -10m # files smaller than 10 M
find -name bashrc -atime +5 # search for files that are older than 5 days
#find "location to search" -name "Name of file to find" -exec "command to execute on the results" {} \;
find . -name "*.o" -exec ls -l {} \;
grep -ir "memorial" . --include=*.txt

echo "putting a task to foreground"
echo "the screen command"
#screen -S aName
#CTRL +ad
#screen -r
echo "the tmux command"

