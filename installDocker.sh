#!/bin/bash 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get install -y software-properties-common python-software-properties
sudo apt-get update
sudo  apt-get install apt-transport-https
sudo apt-get install -y docker-ce
