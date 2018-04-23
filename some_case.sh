#!/bin/bash

# Some script using case
col2=$(tput setaf 4)
col=$(tput setaf 1)
cl_col=$(tput sgr0)


echo $col2"What do you want to display?"$cl_col
echo $col"a$cl_col The files in current working directory"
echo $col"b$cl_col The current working directory path"
echo $col"c$cl_col The name of the host"
echo $col"d$cl_col The current date"

read option

case $option in
	a) echo "$(ls -l)";;
	b) echo $(pwd);;
	c) echo $(hostname);;
	d) echo $(date +"%F %R");;
	*) echo "No such option";;
esac
