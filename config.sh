#! /bin/bash

# Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -  
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable
sudo rm -rf /etc/apt/sources.list.d/google.list

# Nimf 
sudo add-apt-repository ppa:hodong/nimf -y
sudo apt-get update
sudo apt-get install nimf nimf-libhangul fonts-nanum fonts-nanum-coding fonts-nanum-extra -y

# Git
sudo apt-get install -y git

# Docker
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -



reboot
