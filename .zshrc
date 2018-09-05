export TERM='xterm-256color'
# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh/.histfile
export ZSHROOT=~/.zsh
HISTSIZE=1000
SAVEHIST=1000
setopt beep notify
bindkey -v
# End of lines configured by zsh-newuser-install

#Locale exports
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#Some variables I need to keep
export ANTIGEN_BUNDLES=~/.antigen/bundles

#Powerlevel9k initialization
POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
POWERLEVEL9K_MODE='nerdfont-complete'
PPOWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_STATUS_VERBOSE=false
POWERLEVEL9K_CONTEXT_TEMPLATE="`hostname -s`"
#POWERLEVEL9K_CUSTOM_MUSIC_PLAY="zsh_itunes_nowplay"
POWERLEVEL9K_CUSTOM_MUSIC_PLAY_BACKGROUND="171"
POWERLEVEL9K_CUSTOM_MUSIC_PLAY_FOREGROUND="249"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(detect_virt os_icon status root_indicator dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs command_execution_time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true


# Antigen shit
source $ZSHROOT/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme bhilburn/powerlevel9k powerlevel9k
antigen apply

#Aliases
#alias ls='ls -GFhl'
#alias ls='colorls -sdr'
#alias reset-anti='rm -rf ./.antigen'

#POWERLINE Mac bindings
#. $POWERLINEROOT/powerline/bindings/zsh/powerline.zsh

# Setup PATH
export PATH="$HOME/.yarn/bin:/usr/local/sbin:$HOME/.local/bin:$PATH"

# Setup Wal
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh
alias wal -R='sleep 300'

# zsh tmux settings
ZSH_TMUX_AUTOSTART='true'
