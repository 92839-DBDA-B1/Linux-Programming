#!/bin/bash


echo "Ques 4. \nWrite a shell script to determine whether a given number is prime or not"


read -p "Enter a Number : " num



is_prime=1
i=2
flag=0
limit=`expr $(echo "sqrt($num)" | bc) + 1`

<<COMMENT
while [ $i -lt $limit ] 
do
		if [ `expr $num % $i` -eq 0 ]
		then
				flag=1
				break
		fi

		i=`expr $i + 1`
done

if [ $flag -eq 0 ]
then
	echo "$num is a prime number."
else
	echo "$num is not a prime number."
fi

<<comment
COMMENT



<<comment
comment

limit=`expr $(echo "sqrt($num)" | bc) + 1`
echo "$limit"

# for var in {2..$limit}

# for var in {seq "2" "$limit"};
for var in $(seq "2" "$limit")
do
	echo "$var"
	if (( $num % $var ==  0 ))
	then
		is_prime=0 # Not a prime number
		break      # Exit the loop early
	fi
done
if [ $is_prime -eq 1 ]
then
	echo "$num is a prime number."
else
	echo "$num is not a prime number."
fi



#comment
