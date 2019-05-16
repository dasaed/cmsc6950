#!/bin/bash

# bash clear screen command
clear;
echo "I just cleared the screen for you"
echo

# Case statement conditional
echo "What is your preferred programming / scripting language"
echo "1) bash"
echo "2) perl"
echo "3) phyton"
echo "4) c++"
echo "5) java"

read choice;
echo

#simple case bash structure. Note in this case $choice is variable 
case $choice in
    1) echo "You selected bash";;
    2) echo "You selected perl";;
    3) echo "You selected phyton";;
    4) echo "You selected c++";;
    5) echo "You selected java";;
esac
echo
