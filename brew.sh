#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# dakala - Add the new shell to the list of legit shells
sudo bash -c "echo /usr/local/bin/bash >> /private/etc/shells"
# dakala - Change the shell for the user - no need to do: sudo chsh -s /usr/local/bin/bash????
chsh -s /usr/local/bin/bash

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install other useful binaries.
brew install git
brew install lynx
brew install p7zip
brew install rename
brew install ssh-copy-id
brew install tree
brew install webkit2png
brew install zopfli
brew install go

# More binaries 
# Install cask
brew tap caskroom/cask

# Install cask packages
# System tools
brew cask install iterm2
brew cask install virtualbox
brew cask install vagrant
brew cask install vagrant-manager

brew cask install google-chrome
brew cask install colloquy

brew cask install araxis-merge
brew cask install balsamiq-mockups
brew cask install gitkraken
brew cask install evernote
brew cask install sublime-text
brew cask install visual-studio-code
brew cask install phpstorm
brew cask install mysqlworkbench
brew cask install sequel-pro
brew cask install skype
brew cask install the-unarchiver
brew cask install ibackupbot
brew cask install visual-paradigm-ce

# media
brew cask install airparrot
brew cask install amazon-music
brew cask install vlc
brew cask install bbc-iplayer-downloads
brew cask install transmission

# languages & tools
brew cask install go-server
brew cask install go-agent
brew cask install java


# Remove outdated versions from the cellar.
brew cleanup
