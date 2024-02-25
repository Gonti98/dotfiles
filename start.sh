#!/bin/bash

sudo apt update && sudo apt upgrade -y

# install git 
sudo apt install git -y
# install neofetch
sudo apt install neofetch -y

# install docker 
curl -fsSL https://get.docker.com -o get-docker.sh
bash get-docker.sh
rm get-docker.sh
