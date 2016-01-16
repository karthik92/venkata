#!/bin/bash

a=(pavan naveen pavan ajay sundeep kumar)

	echo ${a[0]}
	echo ${a[1]}
	echo ${a[2]}
	echo ${a[3]}
	echo ${a[4]}
	
	echo "The array elements are "
	echo ${a[@]}

if [ ${a[0]} == ${a[2]} ]
then
	echo "equal"
fi 


