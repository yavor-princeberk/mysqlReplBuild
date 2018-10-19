#!/bin/bash 
if [ -z $1 ]; 
then 
	echo "Usage: buildImage.sh <master|slave>"
	exit 1
fi
if [ $1 == "master" ]; 
then 
	docker build -t mysql_master -f Dockerfile-master .
fi
if [ $1 == "slave" ];
then	
	docker build -t mysql_slave -f Dockerfile-slave . 
fi
