#!/bin/bash

echo -e "Ques 2. Write a shell script to display menu like “1. Date, 2. Cal, 3. Ls, 4. Pwd, 5. Exit” and execute the commands depending on user choice."


echo -e  "\n 1. Date \n 2. Cal \n 3. Ls \n 4. Pwd \n 5. Exit \n Enter Your Choice :" 
read choice
while [ $choice -ne 5 ]
do
		case $choice in	
				1)
	   					echo "DATE :" `date +%d\%m\%Y` 
						;;	
				2)
		   				echo "Calculator :" 
						cal
						;;
				3)
			   			echo -e "Present Directory Content "
						for var in `ls`
						do
							echo "$var"
						done
						;;
				4)
						echo " Present Working Directory :" `pwd`
						;;
				5)
						echo "Exit"
						exit
						;;	
				*)
			   			echo "Invalid Choice "
						;;
		esac

		echo -e  "\n 1. Date \n 2. Cal \n 3. Ls \n 4. Pwd \n 5. Exit \n Enter Your Choice :" 
		read choice
done










