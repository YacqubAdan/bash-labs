#!/bin/bash

echo "Script to install git..."

if [ "$(uname)" == "Linux" ];
then
	echo "This is a linux machine. Proceeding to install git..."
	sudo apt install git -y
elif [ "$(uname)" == "Darwin" ];
then
	echo "This is a mac machine. Proceeding to install git..."
	brew install git
else
	echo "Sorry cannot install. Please use an alternative method to install git."
fi
