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

# Composer
sudo apt update
sudo apt install curl php-cli php-mbstring git unzip -y
curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

# Docker
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce -y
sudo usermod -aG docker ${USER}
sudo systemctl start docker
sudo systemctl enable docker
sudo apt-get install docker-compose -y


reboot
