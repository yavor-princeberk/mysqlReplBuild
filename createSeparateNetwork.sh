#!/bin/bash 
if [ -z $1 ]; 
then 
	echo "Usage: ./createSeparateNetwork.sh <NetworkName>" 
	exit 1
fi
MY_NETWORK=$1
docker network create --subnet=172.18.0.0/16 $MY_NETWORK
