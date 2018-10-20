#!/bin/bash 
if [ -z $1 ];
then
	echo "Usage: createVolume.sh <VolumeName>"
	exit 1
fi
docker volume create $1 
