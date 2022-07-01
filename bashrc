#!/usr/bin/env bash
# .bashrc
# Author: Issei Horie <issei.horie@is2ei.com>
# Source: https://github.com/is2ei/dotfiles

#-------------------------------------------------------------------
# Includes
#-------------------------------------------------------------------
SCRIPT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
source $SCRIPT_PATH/bash/alias

#------------
# info
#------------
os=`uname`
window_manager=`echo $DESKTOP_SESSION`

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
shopt -s no_empty_cmd_completion
shopt -s checkwinsize

# Case-insensitive globbing (userd in pathname expansion)
shopt -s nocaseglob;

#------------------------------------------------------------------
# History options
#------------------------------------------------------------------
HISTCONTROL=ignoreboth
HISTSIZE=100000
HISTFILESIZE=2000000
shopt -s histappend

#------------------
# Vim settings
#-----------------
alias vi="vim"

#-----------------
# Emacs settings
#-----------------
if [ "$os" == "Darwin" ]; then
  alias e="emacs"
else
  alias e="emacs -nw"
fi

#-------------------------------------
# extract archives
#-------------------------------------
extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)    tar xvjf $1           ;;
      *.tar.gz)     tar xvzf $1           ;;
      *.bz2)        bunzip2 $1            ;;
      *.rar)        unrar x $1            ;;
      *.gz)         gunzip $1             ;;
      *.tar)        tar xvf $1            ;;
      *.tbz2)       tar xvjf $1           ;;
      *.tgz)        tar xvzf $1           ;;
      *.xz)         xz -dv $1 | tar xfv - ;;
      *.zip)        unzip $1              ;;
      *.Z)          uncompress $1         ;;
      *.7z)         7z x $1               ;;
      *)            echo "don't know how to extract '$1'..." ;;
    esac
  else
    echo "'$1' is not a valid file!"
  fi
}

#--------------------------------------------------------------------
# Takes json on stdin and prints the value of a given path on stdout.
#--------------------------------------------------------------------
json_val() {
  [[ -z "$1" ]] && printf "Usage: json_val <path>\n" && return 10

  python -c 'import sys; import json; \
    j = json.loads(sys.stdin.read()); \
    print j'$1';'
}

#---------------------------------------------------------------
# Returns the public/internet visible IP address of the system.
#---------------------------------------------------------------
whats_my_public_ip() {
   curl --silent 'https://jsonip.com/' | json_val '["ip"]'
}

#---------------------------------------------------
# Check if CPU has hardware virtualization support
#---------------------------------------------------
has_hardware_virtualization_support() {
  egrep -c '(svm|vmx)' /proc/cpuinfo;
}

#--------------------------------------
# Show specific line
#--------------------------------------
cat-line () {
  head -n $3 $1 | tail -n `expr $3 - $2 + 1`
}
