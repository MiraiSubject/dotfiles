# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh/.histfile
export ZSHROOT=~/.zsh
HISTSIZE=1000
SAVEHIST=1000
setopt beep notify
bindkey -v
export POWERLINEROOT=/usr/local/lib/python2.7/site-packages
# End of lines configured by zsh-newuser-install

#Locale exports
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export THEOS=~/DevProjects/Xcode/theos

#Some variables I need to keep
export ANTIGEN_BUNDLES=~/.antigen/bundles
POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
POWERLEVEL9K_MODE='nerdfont-complete'
PPOWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_CONTEXT_TEMPLATE="`scutil --get ComputerName`" #hostname -s
POWERLEVEL9K_CUSTOM_MUSIC_PLAY=$ZSHROOT/nowplaying
POWERLEVEL9K_CUSTOM_MUSIC_PLAY_BACKGROUND="161"
POWERLEVEL9K_CUSTOM_MUSIC_PLAY_FOREGROUND="white"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon status root_indicator context load dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(custom_music_play) #background_jobs command_execution_time)
POWERLEVEL9K_USER_DEFAULT_BACKGROUND="18"
POWERLEVEL9K_USER_DEFAULT_FOREGROUND="250"
POWERLEVEL9K_USER_ICON=$'\uF263'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true


# Antigen shit
source $ZSHROOT/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle command-not-found
antigen bundle osx
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme bhilburn/powerlevel9k powerlevel9k
antigen apply

#Aliases
#alias ls='ls -GFhl'
#alias ls='colorls -sdr'
#alias reset-anti='rm -rf ./.antigen'

#POWERLINE
#. $POWERLINEROOT/powerline/bindings/zsh/powerline.zsh

export PATH="/Users/subject/.yarn/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Library/Frameworks/Mono.framework/Versions/Current/Commands"
#ln -s /usr/local/Cellar/python@2/2.7.14_3/Frameworks/Python.framework/Versions/2.7/bin/python2.7  /usr/local/Cellar/python/3.6.4_4/bin

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

