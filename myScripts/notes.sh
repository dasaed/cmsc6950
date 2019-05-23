#!/bin/bash
FOO=$(pwd)
echo ${FOO%suffix} # remove suffix
echo ${FOO#prefix} # remove prefix
echo ${FOO%%suffix} # remove long suffix
echo ${FOO##suffix} # remove long prefix
echo ${FOO/dasaed/newvar} # replace first match
echo ${FOO//dasaed/newvar} # replace all matches
echo ${FOO/%dasaed/newvar} # replace suffix
echo ${FOO/#dasaed/newvar} # replace prefix
name="CARLOSSALCEDO"
#echo ${name:from:to}
echo ${name:0:6}
echo "Now we are going to talk about arrays"
myfruits=("apple" "banana" "pear" "coconut")
Fruits=('Apple' 'Banana' 'Orange')

echo ${Fruits[0]}           # Element #0
echo ${Fruits}              # Element #0
echo ${Fruits[@]}           # All elements, space-separated
echo ${#Fruits[@]}          # Number of elements
echo ${#Fruits}             # String length of the 1st element
echo ${#Fruits[3]}          # String length of the Nth element
echo ${Fruits[@]:3:2}       # Range (from position 3, length 2)

Fruits=("${Fruits[@]}" "Watermelon")    # Push
Fruits+=('Watermelon')                  # Also Push
Fruits=( ${Fruits[@]/Ap*/} )            # Remove by regex match (More detail later)
unset Fruits[2]                         # Remove one item

Veggies=('onion' 'garlic')
Fruits=("${Fruits[@]}" "${Veggies[@]}") # Concatenate


echo "There are dictionaries in shell as well"
declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo ${sounds[dog]} # Dog's sound
echo ${sounds[@]}   # All values
echo ${!sounds[@]}  # All keys
echo ${#sounds[@]}  # Number of elements
unset sounds[dog]   # Delete dog
echo ${sounds[@]}


#[[ -z STRING ]]          #Empty string
#[[ -n STRING ]]          #Not empty string
#[[ STRING == STRING ]]    #Equal
#[[ STRING != STRING ]]    #Not Equal
#[[ NUM -eq NUM ]]          #Equal
#[[ NUM -ne NUM ]]          #Not equal
#[[ NUM -lt NUM ]]          #Less than
#[[ NUM -le NUM ]]          #Less than or equal
#[[ NUM -gt NUM ]]          #Greater than
#[[ NUM -ge NUM ]]          #Greater than or equal
#[[ STRING =~ STRING ]]    #Regexp
#(( NUM < NUM ))          #Numeric conditions
#[[ ! EXPR ]]                #Not
#[[ X ]] && [[ Y ]]        #And
#[[ X ]] || [[ Y ]]        #Or
#[[ -r FILE ]]   #Readable
#[[ -w FILE ]]   #Writable
#[[ -x FILE ]]   #Executable
#[[ -h FILE ]]   #Symlink
#
#[[ -f FILE ]]   #File
#[[ -d FILE ]]   #Directory
#
#[[ -e FILE ]]   #Exists
#[[ -s FILE ]]   #Size is > 0 bytes
#
#[[ FILE1 -nt FILE2 ]]   #1 is more recent than 2
#[[ FILE1 -ot FILE2 ]]   #2 is more recent than 1
#[[ FILE1 -ef FILE2 ]]   #Same files




if ping -c 1 google.com; then
  echo "It appears you have a working internet connection"
fi
###############################################
if [[ -z "$string" ]]; then
  echo "String is empty"
elif [[ -n "$string" ]]; then
  echo "String is not empty"
fi
###############################################
if grep -q 'foo' ~/.bash_history; then
  echo "You appear to have typed 'foo' in the past"
fi
###############################################
a=3
b=5
if (( $a < $b )); then
   echo "$a is smaller than $b"
fi
###############################################
echo "Enter a number"
read number
if ! [[ "$number" =~ ^[0-9]+$ ]]
    then
        echo "Sorry integers only"
fi




# Squares of numbers from 1 through 10
x=0
while [[ $x -lt 10 ]]; do # value of x is less than 10
  x=$(( x + 1 )) # increase x
  echo $(( x * x ))
done
