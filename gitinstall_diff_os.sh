#!/bin/bash

#project_01 to install git in different types of os

#check OS
OS_TYPE=$(uname)
echo "This is $OS_TYPE"
echo "installing Git according to your OS........"

#Install Git based on your  OS
if [ "$OS_TYPE" == "Linux" ];
then
	if [ -f /etc/redhat-release ];
	then
		echo "This is a RedHat-based Linux (e.g.. CentOS/RHEL), installing Git........."
		sudo yum install git -y
	elif [ -f /etc/debian_version ];
	then
		echo "This is a Debian-based Linux (e.g.. UBUNTU), installing Git........."
		sudo apt install git -y
	else
		echo "Unknown Linux distribution please install Git manually........."
	fi
elif [ "$OS_TYPE" == "Darwin" ];
then
	echo "This is MacOS-based OS Darwin, installing Git........."
	brew install git
else
	echo "No supported OS is detected (LINUX, UBUNTU, DARWIN, can't install Git........."
fi

echo "This is an sutomated script to install Git by RAYEES !"
