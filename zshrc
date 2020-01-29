#!/usr/bin/env zsh

#-------------------------------------------------------------------
# Basic settings
#-------------------------------------------------------------------
umask 022
unset LANG
unset LANGUAGE
alias bashrc="source ~/.bashrc"
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias path='echo -e ${PATH//:/\\n}'
alias c='cargo'

#-------------------------------------------------------------------
# Specific settings
#-------------------------------------------------------------------
CURRENT_REPOSICOTY_PATH=${0:a:h}

source "${CURRENT_REPOSICOTY_PATH}/zsh/alias"
source "${CURRENT_REPOSICOTY_PATH}/zsh/prompt"
