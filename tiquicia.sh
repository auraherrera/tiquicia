#!/bin/bash
#############
# UBUNTU
#############
sudo apt update

#############
# ZSH
#############

sudo apt install zsh
sudo chsh -s $(which zsh) $(whoami)

#############
# ANTIGEN + OH-MY-ZSH
#############

mkdir ~/.antigen
curl -L git.io/antigen > ~/.antigen/antigen.zsh
sudo apt install zsh-antigen
curl -L git.io/fpUlD >> ~/.zshrc

#############
# POWERLINE + VIM
#############

sudo apt install python-pip
pip install powerline-status
PWR=$(pip show powerline-status | awk '{print $2}' | grep site-packages)

cat <<EOT >> ~/.vimrc
set rtp+=$PWR/powerline/bindings/vim
set laststatus=2
set t_Co=256
EOT

source ~/.vimrc

#############
# AWESOME FONTS
#############

sudo apt install fontconfig
git clone https://github.com/gabrielelana/awesome-terminal-fonts.git /tmp/awesome-fonts/
bash /tmp/awesome-fonts/install.sh

