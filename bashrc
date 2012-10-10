#
# ~/.bashrc
# Bash Startup Script for Mac OS X
# 
# .bashrc is executed for iteractive non-login shells, by default
#

alias ls="ls -CFG"
alias dir="ls -FlasHG"

export DEV_ENVIRONMENT="Local"

function prompt {
  local BLUE="\[\033[0;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local DARK_BLUE="\[\033[1;34m\]"
  local RED="\[\033[0;31m\]"
  local DARK_RED="\[\033[1;31m\]"
  local NO_COLOR="\[\033[0m\]"
  case $TERM in
    xterm*|rxvt*)
      TITLEBAR='\[\033]0;\u@\h:\w\007\]'
      ;;
    *)
      TITLEBAR=""
      ;;
  esac
  PS1="${BLUE}${DEV_ENVIRONMENT}${NO_COLOR} \u@\h [\t]> "
  PS1="${TITLEBAR}${PURPLE}{${DEV_ENVIRONMENT}} $BLUE\u@\h $RED[\t]>$NO_COLOR "
  PS2='continue-> '
  PS4='$0.$LINENO+ '
}

prompt
