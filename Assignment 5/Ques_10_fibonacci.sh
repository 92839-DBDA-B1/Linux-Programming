#!/bin/bash

# Write a program to find given number of terms in the Fibonacci series.


x=0
y=1

read -p "Enter number of terms: " num

if [ "$num" -le 0 ]; then
    echo "Please enter a positive number."
    exit 1
fi

echo "Fibonacci Series up to $num terms:"

echo "$x"
if [ "$num" -gt 1 ]; then
    echo "$y"
fi
i=2
while [ "$i" -lt "$num" ]; do
    z=$((x + y)) # Calculate the next number
    echo "$z"
    x=$y # Move the second number to the first position
    y=$z # Move the new number to the second position
    i=$((i + 1)) # Increment the counter
done

