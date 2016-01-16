#!/bin/bash

if [ $# -lt 1 ]
then
        echo "Usage : $0 [dev1|dev2|dev3]"
        exit
fi


case "$1" in

dev1)  
	ipaddress="171.1.1.1"
	hostname="xldcif30"
    	;;
dev2)
	ipaddress="171.1.1.2"
	hostname="xldcif31"
        ;;
dev3)
	ipaddress="171.1.1.3"
	hostname="xldcif32"
        ;;
*)
	echo "Please give correct enviorment"
	exit 0
	;;
esac

echo "The ipaddress is: $ipaddress"
echo "The hostname is : $hostname"
echo "The Environments is $1"``

echo " Let start the deployment"
echo "..............."
echo "done"

