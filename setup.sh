#!/bin/sh
cd
sudo apt-get update 
sudo apt-get upgrade -y
sudo apt-get install git
curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
sudo apt-get install nodejs
curl https://get.telebit.io/ | bash
