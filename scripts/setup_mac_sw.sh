#!/bin/bash

# install homebrew package mgr
if ! command -v brew &> /dev/null
then
    export CI=1 # for non interactive install
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    # add 'brew' exec to PATH
    PATH=$PATH:/usr/local/bin
    export PATH
fi

# Open client for Cisco Anyconnect VPN
brew install openconnect

# # Java 8u202
# # https://devqa.io/brew-install-java/
brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk8

#Python 3.7.6
#If you need to have python@3.7 first in your PATH run:
#echo 'export PATH="/usr/local/opt/python@3.7/bin:$PATH"' >> ~/.zshrc
brew install python@3.7

# Xcode 11.3.1 (or above)
# xcodebuild -version
# find the xcode versions available by typing: $ softwareupdate --list
#softwareupdate -i "Command Line Tools for Xcode-12.2"

#Unity Hub
brew cask install unity-hub

#Unity-2019.4.5f1
#https://unity3d.com/get-unity/download/archive
brew cask install unity

#Perforce Helix Client OSX 10.11+ (x64); 2019.2/1904275
#https://www.perforce.com/downloads/helix-command-line-client-p4
brew cask install p4v

# Node v14
#echo 'export PATH="/usr/local/opt/node@14/bin:$PATH"' >> ~/.zshrc
brew install node@14