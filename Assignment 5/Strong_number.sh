#!/bin/bash

fact_num()
{
		nm=$1
		i=1
		res=1
		while [ $i -le  $nm ]
		do
				# code
				res=`expr $res \* $i`
				i=`expr $i + 1`
		done
		echo $res
}

# Prompt the user to enter a number
echo -e "Enter a number : "
read num


temp=$num


res=$( fact_num 10 )

sum=0
while [ $num -gt 0 ]


do

		rem=`expr $num % 10 `
		fact=$(fact_num $rem)
		sum=`expr $sum + $fact`

		num=`expr $num / 10 #modification`
done

if [ $sum -eq $temp ]
then
		echo " It is a Strong Number"
else
		echo " It is not a Strong Number"
fi

