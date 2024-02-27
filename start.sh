#!/bin/bash

sudo apt update && sudo apt upgrade -y

# install btop
sudo apt install btop -y

# install neofetch
sudo apt install neofetch -y

# install tmux
sudo apt install tmux -y
# install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install docker 
curl -fsSL https://get.docker.com -o get-docker.sh
bash get-docker.sh
rm get-docker.sh

#add user to docker group
sudo groupadd docker
sudo usermod -sG docker $USER
