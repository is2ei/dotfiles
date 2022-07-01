#!/usr/bin/env bash

#-------------------------------------------------------------------
# Includes
#-------------------------------------------------------------------
SCRIPT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
source $SCRIPT_PATH/bash/prompt

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

#----------------------------
# Tailoring 'less'
#----------------------------
# LESS man page colors
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

#--------------------------------------------------------
# colored ls
#--------------------------------------------------------
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  alias grep='grep -n --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
else
  export CLICOLOR=1
  export LSCOLORS=gxFxCxDxcxegedabagaced
fi
