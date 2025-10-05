#!/bin/bash

# Write a shell script to display only executable files of current directory.


touch file{1..3}.txt
chmod 777 file{1..3}.txt
for file in *
do
	if [ -f $file -a -x $file ]
	then
		echo "$(ls -l $file)"
	fi
	
done
# deleting files one program execution done 
rm file{1..3}.txt

<<comment

i have created 3 files file1.txt file2.txt and file3.txt and give the executable permission to check if program is working 

comment
