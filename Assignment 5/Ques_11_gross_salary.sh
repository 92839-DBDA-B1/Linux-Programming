#!/bin/bash

# 11. Write a program to calculate gross salary if the DA is 40%, HRA is 20% of basic salary.
#Accept basic salary form user and display gross salary (Result can be floating point
#value).

read -p "Please enter basic salary : " salary

#DA=$((salary * 40 / 100))
#echo "$DA"

DA2=`expr $salary \* 40 / 100`|scale=2
echo "$DA2"

DA=$(echo "scale=2; $salary * 40 / 100" | bc)
HRA=$(echo "scale=2; $salary * 20 /100" | bc)
gross_salary=$(echo "scale=2; $salary + $DA +$HRA" | bc)

echo "DA : $DA"
echo "HRA : $HRA"
echo "Gross salary : $gross_salary"
