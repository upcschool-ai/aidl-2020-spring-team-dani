#!/usr/bin/env bash

#Basic stuff
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    sudo apt update
    sudo apt install build-essential libssl-dev libffi-dev python-dev libopenmpi-dev
    sudo apt install python3-pip
    sudo pip3 install virtualenv 
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX brew stuff
elif [[ "$OSTYPE" == "WINDOWS"* ]]; then
    # No idea, maybe choco something?
fi


#Create environment
python3 -m venv env
. env/bin/activate

# pyton packages
pip3 install pylint autopep8 matplotlib
