#!/bin/bash 
CURUSER=$(whoami)
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get install -y software-properties-common python-software-properties
sudo apt-get update
sudo  apt-get install apt-transport-https
sudo apt-get install -y docker-ce
sudo usermod -aG docker $CURUSER
read -p "Press Y to reboot the PC " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo reboot
fi 
