#!/bin/bash 
if [ -z $1 ];
then 
	echo "Usage: rmContainer.sh <container_name>"
	exit 1
fi
docker stop $1 && docker rm $1 

