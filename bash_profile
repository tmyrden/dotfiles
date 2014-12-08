#!/bin/bash

# Notes: ---------------------------------------------------------------------------
#
#   When you start an interactive shell (log in, open terminal or iTerm in OS X,
#   create a new tab in iTerm) the following files are read and run, in this order:
#     * profile
#     * bashrc
#     * .bash_profile
#     * .bashrc (only because this file is run (sourced) in .bash_profile)
#
#   When an interactive shell, that is not a login shell, is started
#   (when you run "bash" from inside a shell, or when you start a shell in
#   xwindows [xterm/gnome-terminal/etc] ) the following files are read and executed,
#   in this order:
#     * bashrc
#     * .bashrc
#
# ----------------------------------------------------------------------------------

export PATH="/usr/local/bin:/usr/local/sbin:$HOME/.mac:$HOME/.bin:$HOME/go/bin:$HOME/.rvm/bin:$PATH"
export PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH
export MANPATH=$(brew --prefix coreutils)/libexec/gnubin:$MANPATH

# Set my editor and git editor
export EDITOR="vi"
export GEM_EDITOR="vi"

# Setting for the new UTF-8 terminal support in Lion
export LANG="en_US.UTF-8"
export LANGUAGE="en_US"
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Fixing gcc in lion
export CC=/usr/bin/gcc
export GOPATH=$HOME/go

# Identify OS and Machine
export OS=`uname -s | sed -e 's/ *//g;y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'`
export OSVERSION=`uname -r`; OSVERSION=`expr "$OSVERSION" : '[^0-9]*\([0-9]*\.[0-9]*\)'`
export MACHINE=`uname -m | sed -e 's/ *//g;y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'`
export PLATFORM="$MACHINE-$OS-$OSVERSION"

# Path to the bash it configuration
export BASH=$HOME/.bash

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Load Bash It
source "$BASH"/bash_it.sh
source $(brew --prefix nvm)/nvm.sh

export NVM_DIR=~/.nvm

# Don't check mail when opening terminal.
unset MAILCHECK

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
