#!/bin/bash

echo "Installing Apps"
echo "==============="
while read in; do brew cask install "$in"; done < "$HOME"/.templates/dependencies/apps

if [ -e "$HOME"/.templates/dependencies/apps-"$INSTALL_ENV" ]; then
  while read in; do brew cask install "$in"; done < "$HOME"/.templates/dependencies/apps-"$INSTALL_ENV"
fi
