#!/bin/bash
#############
# UBUNTU
#############
sudo apt update

#############
# ZSH
#############

sudo apt install zsh -y
sudo chsh -s $(which zsh) $(whoami)

#############
# ANTIGEN + OH-MY-ZSH
#############

mkdir ~/.antigen
curl -L git.io/antigen > ~/.antigen/antigen.zsh
sudo apt install zsh-antigen -y
curl -L git.io/fpUVR >> ~/.zshrc

#############
# POWERLINE + VIM
#############

sudo apt install python-pip -y
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

sudo apt install fontconfig -y
git clone https://github.com/gabrielelana/awesome-terminal-fonts.git /tmp/awesome-fonts/
bash /tmp/awesome-fonts/install.sh

#############
# TMUX
#############

curl -L git.io/fpU5w >> ~/.tmux.conf
echo -e 'if [ "$TMUX" = "" ]; then $(tmux new -s puravida); fi' >> ~/.zshrc



