#!/bin/bash
 
echo '### Using let ###'
# bash addition
let ADDITION=3+5
echo "3 + 5 =" $ADDITION

# bash subtraction
let SUBTRACTION=7-8
echo "7 - 8 =" $SUBTRACTION 

# bash multiplication
let MULTIPLICATION=5*8
echo "5 * 8 =" $MULTIPLICATION

# bash division
let DIVISION=4/2
echo "4 / 2 =" $DIVISION

# bash modulus
let MODULUS=9%4
echo "9 % 4 =" $MODULUS

# bash power of two
let POWEROFTWO=2**2
echo "2 ^ 2 =" $POWEROFTWO

echo

echo "### BASH ARITHMETIC EXPANSION USING [ ] and (( ))###"
# There are two formats for arithmetic expansion: $[ expression ] 
# and $(( expression #)). Its your choice which you use

echo 7 - 7 = $[ 7 - 7 ]
echo 2 ^ 8 = $[ 2 ** 8 ]

echo 4 + 5 = $((4 + 5))
echo 3 x 2 = $((3 * 2))
echo 6 / 3 = $((6 / 3))
echo 8 % 7 = $((8 % 7))

echo
echo '### Converting number to other base ###'
echo "Conversion is done <base>#<number_in_base>"
# bash convert binary number 1010
echo "bash convert binary number 1010 to decimal"
result=$((2#1010))
echo $result

# bash convert octal number 12
echo "bash convert octal number 12 to decimal"
result=$((8#12))
echo $result

# bash convert hex number A
echo "bash convert hex number A to decimal"
result=$((16#A))
echo $result 
