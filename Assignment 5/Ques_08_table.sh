#!/bin/bash

echo "Ques 8. \nWrite a program to print the table of a given number."



read -p "Enter a number : " num

i=1  # initialization
while [ $i -le 10 ]
do
		res=`expr $i \* $num`	# code
		echo "$res"				# code
		i=`expr $i + 1`       # modification
done






