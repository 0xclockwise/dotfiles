#!/bin/bash

stty -ixon # Disable ctrl-s and ctrl-q.
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.
export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]" #Cool bash prompt

PATH=$PATH:~/.scripts


#Regenerate shortcuts
shortcut-generator.sh

[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc" # Load shortcut aliases
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
export XDG_RUNTIME_DIR=/tmp

#VARS
export EDITOR=vim
export TERM=xterm-color

#Manage dotfiles with git
alias dotfiles='/usr/bin/git --git-dir=$HOME/Workspace/dotfiles/ --work-tree=$HOME'
