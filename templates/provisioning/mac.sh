#!/bin/bash

if pkgutil --pkg-info=com.apple.pkg.CLTools_Executables > /dev/null 2>&1; then
  echo "==> Mac OSX Command-Line Tools are installed."
else
  echo "==> Installing Command-Line Tools"
  xcode-select --install
fi
