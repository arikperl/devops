#!/bin/bash
#Install on master

sudo apt update
sudo apt install -y openjdk-8-jdk
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install -y jenkins

#Install on slave

#sudo apt install software-properties-common apt-transport-https -y
#sudo add-apt-repository ppa:openjdk-r/ppa -y
#sudo apt install openjdk-8-jdk -y
