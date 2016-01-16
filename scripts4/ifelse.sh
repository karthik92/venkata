#!/bin/bash

VALID_PASSWORD="abc$" #this is our password.

echo "Please enter the password:"
read xyz

if [ "$xyz" == $VALID_PASSWORD ]
then
	echo "You have access! The password matches"
	echo "valid passowrd $VALID_PASSWORD"
else
	echo "ACCESS DENIED!"
        echo "valid passowrd $VALID_PASSWORD"
fi
