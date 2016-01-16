#!/bin/bash

if [ "$#" -ne 10 ]
then
	echo "USAGE: $0 1 2 3 ... 10"
	echo "please pass 10 parameters"
else
	echo " Program name: $0"
	echo "First parameter: $1"
	echo "Second parameter: $2"
	echo "Third parameter: $3"
	echo "Nine parameter: $9"
	echo "tenth parameter:$10" 
	echo "No of parametrs: $#"
	echo "Values of all parameters: $*"

fi
