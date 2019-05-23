#!/bin/bash
# Program Created by: Carlos Dasaed Salcedo Carreno
# E-mail: cdsalcedo@mun.ca

echo "User name: ${USERNAME}"
echo "Home Directory: ${HOME}"
echo "Terminal Type: ${TERM}"
echo "Date: $(date)"

#num1=10;
#num2=23;
#myarray1=`echo {$1..$2}`
#myarray2=`echo {${num1}..${num2}}`
#print $myarray1
#print $myarray2


#This for is bash specific, and will not work unless you run the script with bash
#for ((i=${num1}; i<=${num2}; i++)); do
#    echo $i
#done

num1=$1
num2=$2
num3=$(($num1 % 2))
num4=$(($num2 % 2))

if [ $num3 -eq 0 ]; then
#	echo "$num1 is even"
	num3=$(($num1+1))
else
	num3=$(($num1))
fi

if [ $num4 -eq 0 ]; then
#	echo "$num2 is even"
	num4=$(($num2-1))
else
	num4=$num2
fi

thePrimes=""

#for i in {${num1}..${num2}}; do
#echo $num3 $num4
for i in $(seq $num3 $num4); do
	if [ $(($i % 2)) -eq 0 ]; then
		continue
	fi
	prime="True"
	limit=$(echo "sqrt($i)"|bc)
#	echo "$i -- $limit"
	for j in $(seq 3 2 $limit); do
		if [ $(($i % $j)) -eq 0 ]; 
		then
			prime="False"
		else
			continue
		fi
	done

	if [ "$i" = "1" ]; then
		continue
	fi

	if [ "$prime" = "True" ]; then
		thePrimes="$thePrimes $i"
#		echo "$i is prime!"
	else
		continue
	fi
done


if [ $(($num1)) -lt 3 ] && [ $(($num2)) -gt 1 ]; then
	thePrimes="2$thePrimes"	
else
	echo "" >/dev/null
fi

if [ "$thePrimes" = "" ]; then
	echo "There are no primes between $num1 and $num2"
else
	echo "There are $(echo $thePrimes | wc -w) primes between $num1 and $num2"
	echo "The primes between $num1 and $num2 are $thePrimes"
fi





