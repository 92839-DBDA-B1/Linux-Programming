#!/bin/bash

<<comment

Write a shell script to display only hidden file of current directory.

comment

# the problem with this command will be it will also print . and .. dir
echo  "Hidden files of current directory - . and .. will be printed =>  $(ls -d .*) "

# so to avoid this using following pattern

# echo  "Hidden files of current directory $(ls -d .[^.]*)"


