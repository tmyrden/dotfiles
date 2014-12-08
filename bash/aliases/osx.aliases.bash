#!/bin/bash

# Desktop Programs
alias preview="open -a '$PREVIEW'"
alias xcode="open -a '/Applications/Xcode.app'"
alias xcode-beta="open -a '/Applications/Xcode-beta.app'"
alias safari="open -a safari"
alias firefox="open -a firefox"
alias chrome="open -a google\ chrome"
alias chromium="open -a chromium"
alias f='open -a Finder'
alias textedit='open -a TextEdit'
alias sublime='open -a Sublime\ Text\ 2'
alias ow='open *.xcworkspace'

# TODO: convert to functions with parameters
alias mac-desktop-hide="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias mac-desktop-show="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
# alias mac-spotlight-hide="sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search && killall SystemUIServer"
# alias mac-spotlight-show="sudo chmod 755 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search && killall SystemUIServer"

# Disable press-and-hold for keys in favor of key repeat
alias mac-press-and-hold-disable="defaults write -g ApplePressAndHoldEnabled -bool false"
alias mac-press-and-hold-enable="defaults write -g ApplePressAndHoldEnabled -bool true"

alias mac-ssh-keychain-integration-disable="sudo defaults write /Library/Preferences/org.openbsd.openssh KeychainIntegration -bool NO"
alias mac-ssh-keychain-integration-enable="sudo defaults write /Library/Preferences/org.openbsd.openssh KeychainIntegration -bool YES"

alias mac-hide="chflags hidden"
alias mac-show="chflags nohidden"

alias mac-fast-terminal='sudo rm -rf /private/var/log/asl/*.asl'
alias mac-fix-open-with-duplicated='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user && killall Finder && echo "Open With has been rebuilt, Finder will relaunch"'

alias mac-openports='sudo lsof -iTCP -sTCP:LISTEN -P'

# Recursively delete `.DS_Store` files
alias mac-ds-store-cleanup="find . -name '*.DS_Store' -type f -ls -delete"

# Always open everything in Finder's list view. This is important.
alias mac-finder-always-use-list-view="defaults write com.apple.Finder FXPreferredViewStyle Nlsv"

alias mac-mac-address-wired="ifconfig en0 | grep ether"
alias mac-mac-address-wireless="ifconfig en1 | grep ether"
