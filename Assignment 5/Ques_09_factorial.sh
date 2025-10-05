#!/bin/bash

# Prompt the user to enter a number
echo "Enter a number:"
read num

# Initialize factorial to 1
fact=1

# Check if the number is negative
if [ $num -lt 0 ]; then
  echo "Factorial is not defined for negative numbers."
elif [ $num -eq 0 ]; then
  echo "The factorial of 0 is 1."
else
  # Calculate factorial using a for loop
  for var in $(seq 1 "$num")
  do
    fact=$((fact * var))
  done
  echo "The factorial of $num is $fact."
fi




<<comment 

#!bin/bash

echo "Ques 9. \nWrite a program to find the factorial of given number."

read -p "Enter a number : " num

if [ $num -lt 0 ]
then
	echo "Entered Number is Invalid to Calculate Factorial"
	read -p "Enter a number : " num
fi

fact=1
echo "Out"

for (( i=1; i<=num; i++ ))
do
    fact=$((fact * i))
done
  echo "The factorial of $num is $fact."
comment
