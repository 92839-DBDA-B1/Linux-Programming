#!/bin/bash

<<comment

17. Print the following pattern.
*
* *
* * *
* * * *
* * * * *
comment

read -p "Enter number of rows: " row
i=1

while [ $i -le $row ]
do
    j=1
    while [ $j -le $i ]
    do
        echo -n "* "
        j=$((j + 1))
    done
    echo ""
    i=$((i + 1))
done
