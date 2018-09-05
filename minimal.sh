!#/bin/bash
clear
echo Starting minimal setup in 3 seconds...;
sleep 3;
apt install git htop -y;
apt install vim tmux zsh -y;
mkdir ~/.zsh;
apt install curl -y;
curl -L git.io/antigen > antigen.zsh