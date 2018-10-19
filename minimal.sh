!#/bin/bash
clear
echo Starting minimal setup in 3 seconds...;
sleep 3;
echo "Installing shit"
apt install git htop vim tmux zsh -y;
mkdir ~/.zsh;
apt install curl -y;
curl -L git.io/antigen > antigen.zsh
echo "Activating antigen crap"
#!/bin/bash
echo $'export TERM='xterm-256color'
# Lines configured by script
export ZSHROOT=~/.zsh
HISTFILE=~/$ZSHROOT/.histfile # ZSH History
HISTSIZE=1000 # Set history length 1000 lines
SAVEHIST=1000 # Set history file length to 1000 lines
setopt beep notify # Makes terminal beep for notifications
bindkey -v
# End of lines configured by zsh-newuser-install' > $HOME/.zshrc;
echo $'# Antigen shit
source $ZSHROOT/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme bhilburn/powerlevel9k powerlevel9k
antigen apply' >> $HOME/.zshrc;