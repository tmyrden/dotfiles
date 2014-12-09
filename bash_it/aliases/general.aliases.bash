#!/bin/bash

# Reload Library
alias reload='source ~/.bash_profile && echo "bash_profile reloaded"'

# List directory contents
alias ls='ls --color=always -a'

alias recent='ls -lAt | head'
alias old='ls -lAt | tail'

# Directory
alias md='mkdir -p'
alias mkdir='mkdir -p'
alias rd=rmdir
alias rmd='rm -Rf'
alias d='dirs -v'

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias u='cd ..'
alias uu='cd ../..'
alias uuu='cd ../../..'
alias uuuu='cd ../../../..'
alias -- -='cd -'       # Go back

# Clear screen
alias c='clear'
alias cls='clear'

alias w='which'
alias q='exit'
alias h='history'

aliases-help () {
  echo "Generic Alias Usage"
  echo
  echo "  sl     = ls"
  echo "  la     = ls -AF"
  echo "  ll     = ls -al"
  echo "  l      = ls -a"
  echo "  c/k    = clear"
  echo "  ..     = cd .."
  echo "  ...    = cd ../.."
  echo "  -      = cd -"
  echo "  h      = history"
  echo "  md     = mkdir -p"
  echo "  rd     = rmdir"
  echo "  d      = dirs -v"
  echo "  editor = $EDITOR"
  echo "  pager  = $PAGER"
  echo "  piano  = pianobar"
  echo "  q      = exit"
  echo "  irc    = $IRC_CLIENT"
  echo
}
