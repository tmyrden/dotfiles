#!/bin/bash

## Command prompt styling
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

PS1="\\[$(tput setaf 7)\\]\[\e[31m\]\w\[\e[m\] \[\e[1;36m\]\$(parse_git_branch)\[\e[m\]\[\e[1;37m\]: \\[$(tput sgr0)\\]"
