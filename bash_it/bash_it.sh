#!/bin/bash

# Initialize Bash It
# Load the framework

# Load Library
LIB="${BASH}/lib/*.bash"
for config_file in $LIB
do
  source $config_file
done

# Load Tab Completion
COMPLETION="${BASH}/completion/*.bash"
for config_file in $COMPLETION
do
  source $config_file
done

# Load Plugins
PLUGINS="${BASH}/plugins/*.bash"
for config_file in $PLUGINS
do
  source $config_file
done

# Load Aliases
FUNCTIONS="${BASH}/aliases/*.bash"
for config_file in $FUNCTIONS
do
  source $config_file
done

unset config_file

# Adding Support for other OSes
PREVIEW="less"
[ -s /usr/bin/gloobus-preview ] && PREVIEW="gloobus-preview"
[ -s /Applications/Preview.app ] && PREVIEW="/Applications/Preview.app"
