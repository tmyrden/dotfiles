#!/bin/bash

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Screenshot dir changes
mkdir ~/Screenshots
defaults write com.apple.screencapture location ~/Screenshots/

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Hide Desktop Icons
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false

# Set Bottom Left Sleep
defaults write com.apple.dock wvous-bl-corner -int 10
defaults write com.apple.dock wvous-bl-modifier -int 0

# Clear dock default apps
defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock persistent-others -array

# Set Natural Scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -int 1

# Set Cmd+Ctrl+Q Key Equivalents
defaults write com.google.Chrome NSUserKeyEquivalents -dict-add 'Quit Google Chrome' '@^q'
defaults write com.googlecode.iTerm2 NSUserKeyEquivalents -dict-add 'Quit iTerm2' '@^q'
defaults write com.sublimetext.2 NSUserKeyEquivalents -dict-add 'Quit Sublime Text 2' '@^q'
defaults write com.apple.dt.Xcode NSUserKeyEquivalents -dict-add 'Quit Xcode' '@^q'
defaults write com.apple.Safari NSUserKeyEquivalents -dict-add 'Quit Safari' '@^q'
defaults write org.videolan.vlc NSUserKeyEquivalents -dict-add 'Quit VLC' '@^q'
defaults write org.mozilla.firefox NSUserKeyEquivalents -dict-add 'Quit Firefox' '@^q'
defaults write com.apple.QuickTimePlayerX NSUserKeyEquivalents -dict-add 'Quit QuickTime Player' '@^q'

# Will hopefully work in the future
defaults write com.spotify.client NSUserKeyEquivalents -dict-add 'Quit Spotify' '@^q'

# Fix apps that choose to ignore Full Screen hotkey defaults
defaults write com.googlecode.iTerm2 NSUserKeyEquivalents -dict-add 'Toggle Full Screen' '@^f'
defaults write com.spotify.client NSUserKeyEquivalents -dict-add 'Full Screen' '@^f'

killall SystemUIServer
killall Finder
killall Dock
