#!/bin/bash 

COUNTER=`ls | wc -l`

while [  $COUNTER -lt 10 ]
do
	echo The counter is $COUNTER
	COUNTER=`expr $COUNTER + 1` 
done

for (( i=`ls | wc -l`; i < 10; i++ ))
do
	echo  for loop The counter is $i
done

	
