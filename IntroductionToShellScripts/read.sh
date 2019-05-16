#!/bin/bash
 
echo
# -e enables interpretation of characters
# \c suppresses trailing newline
echo -e "Hi, please type the word: \c "
read  word
echo "The word you entered is: $word"

echo
echo -e "Can you please enter two words? "
# does not suppress trailing newline
read word1 word2
echo "Here is your input: \"$word1\" \"$word2\""

echo
echo -e "How do you feel about bash scripting? " 
# read command now stores a reply into the default build-in variable $REPLY
read

echo
echo "You said $REPLY, I'm glad to hear that! "

echo
echo -e "What are your favorite three colours ? "
# -a makes read command to read into an array
read -a colours

echo
echo "My favorite colours are also ${colours[0]}, ${colours[1]} and ${colours[2]} :-)" 
