#!/bin/bash

echo "Ques 7. \nWrite a Program to find whether a given number is positive or negative"




read -p "Enter num : " num

if [ `expr $num` -ge 0 ]
then
		echo "Num is Positive $num"
else
		echo "Num is Negative $num"
fi






