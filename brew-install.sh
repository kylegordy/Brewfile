#!/bin/sh

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Upgrade any already-installed formulae
brew upgrade

# Find and fix any issues
brew doctor

# Binaries
binaries=(
drush
ffmpeg
git
grep
ngrok
node
python3
sqlite
tmux
wget
youtube-dl
)

# Install Binaries
echo "installing binaries..."
brew install ${binaries[@]}

# Cleanup
brew cleanup

# Install Brew Cask
brew install caskroom/cask/brew-cask

# Tap Versions to install beta versions of apps like Chrome Canary or Sublime Text 3
brew tap caskroom/versions

# Apps
apps=(
adobe-creative-cloud
alfred
android-file-transfer
atom
crashplan
cyberduck
firefox
google-chrome
google-drive
google-hangouts
handbrake
hyperdock
imagealpha
imageoptim
java
libreoffice
licecap
namechanger
opera
private-internet-access
sequel-pro
sketch
spotify
steam
silverlight
sublime-text3
transmission
vagrant
vagrant-manager
virtualbox
vlc
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

# Link cask apps to Alfred
brew cask alfred link

# Cleanup
brew cask cleanup
