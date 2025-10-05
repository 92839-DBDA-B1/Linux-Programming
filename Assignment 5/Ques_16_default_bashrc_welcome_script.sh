#!/bin/bash

<<comment 
Write a shell script to display welcome message to the user along with contents of his
home directory. Ensure that shell script will execute automatically when user login to the
shell. (Make entry of your shell script into .bashrc file into your home directory).



1. create script in home directory

vim ~/welcome.sh

2. add below content in script

#!/bin/bash

echo "-------------------------------------------"
echo "Welcome, $USER! You are logged in at: $(date)"
echo "Your home directory is: $HOME"
echo "Here are the contents of your home directory:"
ls -al ~
echo "-------------------------------------------"


3. make this welcome.sh script executable

chmod +x ~/welcome.sh

4. open .bashrc

vim ~/.bashrc

#add below line in bashrc

# Run welcome script at shell login
~/welcome.sh

Cntrl + O , Enter , Cntrl + X

5. to cfross check 

source ~/.bashrc

comment


echo "-------------------------------------------"
echo "Welcome, $USER! You are logged in at: $(date)"
echo "Your home directory is: $HOME"
echo "Here are the contents of your home directory:"
ls -al ~
echo "-------------------------------------------"
