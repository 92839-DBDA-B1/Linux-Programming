#!/bin/bash

# . Accept the two file names from user and append the contents in reverse case of first file into second file.

read -p "Enter file1 and file2 names : " file1 file2

echo "Enter content of file : "
cat > $file1

echo "Content of file : $(cat $file1) "

touch $file2

if [ -e $file1 -a -e $file2 -a -r $file1 -a -w $file2 ] # checking if file1 file2 exist file1 is readable and file2 is writable
then
	tr 'a-zA-Z' 'A-Za-z' < $file1 >> $file2
else
	echo "$file1 and $file2 does not exist or are not readable or writeable"
fi

echo -e "Case reversed content of $file2 is \n "

cat $file2
