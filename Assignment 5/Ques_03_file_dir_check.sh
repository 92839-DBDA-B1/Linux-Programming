#!/bin/bash




echo -e "Ques 3. \nWrite a shell script to accept the name from the user and check whether user entered name is file or directory.
If name is file display its size and if it is directory display its contents."


echo "Enter the Path : "
read path


if [ -e $path ]
then
		echo " Path exists"
		if [ -d $path ] 
		then 
				echo " It is direcctory "
				res=`stat -c %U $path`
				echo -e "$res \n \n"
				echo -e "Contents of Directory are "
				for i in `ls $path`
				do
					echo $i
				done

		elif [ -f $path ]
		then
				echo " It is a File "
				echo "File Size: $(stat -c%s "$path") bytes"

				echo -e "\n File Content : "
				cat "$path"

		else
				echo " Other type file "
		fi
						
else 
		echo " Path not exists"
fi



