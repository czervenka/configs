# host name of home machine (do not display hostname in command prompt on this host)
export HOME_PC_HOSTNAME="blacky"

#export LC_ALL="cs_CZ.utf8"
export LC_ALL="en_US.utf8"
export LANG="en_US.utf8"
export EDITOR="vim"

# load emacs-like editing
bindkey -e

# load vi-like editing
# bindkey -v

autoload -U compinit promptinit
compinit
promptinit; 

#this option appears to be needed on debian, but not on arch.
#unsetopt prompt_cr
autoload -U zmv

export PATH=$HOME/bin:$PATH:/usr/local/bin
export PAGER="less -ri"
export PYTHONPATH="$HOME/data/python:$PYTHONPATH"

# change to directories as it was executable
setopt autocd
# complete on second teb pres
unsetopt menucomplete
setopt automenu

HISTSIZE=11000
SAVEHIST=10000
# do not save duplicates in history
HIST_IGNORE_ALL_DUPS=1

HISTFILE=~/.zsh_history
source ~/.zshalias

# Key Bindings
# Common key codes combinations for various terminals
# use ctrl-v and your key to see your key code
bindkey "\e[H"  beginning-of-line
bindkey "\e[7~" beginning-of-line
bindkey "\e[1~" beginning-of-line
bindkey "\e[8~" end-of-line
bindkey "\e[F"  end-of-line
bindkey "\e[4~"  end-of-line
bindkey "\e[3~" delete-char
bindkey "\eOA" history-search-forward

# ctrl-del
bindkey "\e[3;5~" delete-word
bindkey "\e[3~" delete-word
# ctrl-left
bindkey "\e[1;5D" backward-word
bindkey "\e[D" backward-word
# ctrl-right
bindkey "\e[C" forward-word
bindkey "\e[1;5C" forward-word


# FUNCTIONS AND COMPLETIONS

# prepend "sudo " on ctrl-u
sudo-prepend() {
   BUFFER="sudo ${=BUFFER}"
   for x in `seq 5`; do
        zle forward-char
   done
}
zle -N sudo-prepend
bindkey "" sudo-prepend

# init scripts
compctl -k "(`ls /etc/rc.d/`)" d
compctl -k "(`ls /etc/rc.d/`)" u
# timesheet
t_complete() {
    reply=(`t .zsh_complete`)
}
compctl -K t_complete t

eval `dircolors ~/.dircolors`

# pip tunning
export PIP_RESPECT_VIRTUALENV=true

# some more functions
[ -f ~/.zshfunctions ] && . ~/.zshfunctions

# set different prompt for regular user on home pc
if [ "$HOST" = "$HOME_PC_HOSTNAME" ] && [ `id -u` -gt 999 ]; then
    export PS1="%(?/%F{249}/%F{red}%?! )%F{251}%40<..<%~%b#%f "
else
    export PS1="%F{red}%n%f@%F{249}%m[%(?.%F{249}.%F{red})%?%F{249}]:%F{251}%30<..<%~%b#%f "
fi

# private overrides
[ -f ~/.zshrc_user ] && . ~/.zshrc_user
