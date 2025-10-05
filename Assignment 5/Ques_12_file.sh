#!/bin/bash

# Write a shell script to accept a filename as argument and displays the last modification
# time if the file exists and a suitable message if it doesn’t exist.

#<<comment
#read -p "Enter file name : " file_name 

#if [ -e $file_name ]
#then
#	echo "Last modification of file $file_name:  $(stat -c %y $file_name)"
#else
#	echo "File $file does not exist"
#fi

#comment

#<<comment


# The find command searches for a regular file (-type f) with a name matching the user's input (-name "$input") starting from the user's home directory ($HOME).
# Any error messages generated during this process are discarded (2>/dev/null).
# The standard output of the find command—which will be the full path of the first matching file it finds—is captured by the command substitution $(...).
# This path is then assigned to the found_file variable. If no file is found, found_file will be assigned an empty string. 


#comment




read -p "Enter a file name or path: " input

# Case 1: The user entered a valid path
if [ -e $input ]
 then
    full_path=$(realpath "$input")
    echo "Found file at: $full_path"
    echo "Last modification at $(stat -c %y $full_path)"

else
    echo "File not found at '$input', searching for '$input'..."
    found_file=$(find "/" -type f -name "$input" 2>/dev/null)

    if [ -n "$found_file" ]; then
        echo "Found at: $found_file"
	echo "Last modification at $(stat -c %y $input)"
    else
        echo "No file with that name was found."
    fi
fi

