#!/bin/bash

echo "Setting up Ubuntu Budgie for myself";
apt update && apt upgrade -y;
apt autoremove -y;
apt install build-essential git firefox -y;
apt purge chromium-browser -y;
apt install vim tmux zsh -y;
mkdir ~/.zsh;
apt install curl -y;
curl -L git.io/antigen > antigen.zsh
apt install python3;
pip3 install wal;
