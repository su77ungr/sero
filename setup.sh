#!/bin/sh
cd
sudo apt-get update 
sudo apt-get upgrade -y
sudo apt-get install git
sudo apt-get install apache2
curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
sudo apt-get install nodejs
curl https://get.telebit.io/ | bash
sudo npm install localtunnel
##custom url possible lt --port XY -s XC
