#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
## Install a modern version of Bash.
#brew install bash
#brew install bash-completion2

## dakala - Add the new shell to the list of legit shells
#sudo bash -c "echo /usr/local/bin/bash >> /private/etc/shells"
# dakala - Change the shell for the user.
#chsh -s /usr/local/bin/bash

## Switch to using brew-installed bash as default shell
#if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
#  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
#  chsh -s "${BREW_PREFIX}/bin/bash";
#fi;

# Install `wget` with IRI support.
brew install wget --with-iri

brew install openldap
brew install libiconv

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh
brew install screen

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install other useful binaries.
brew install ack
# brew install dark-mode
brew install git
# brew install go
brew install gpg1
brew install gradle
brew install htop
brew install git-lfs
brew install gs
# brew install imagemagick --with-webp
# brew install lua
brew install lynx
brew install mongodb
#brew install node
brew install nvm
brew install p7zip
brew install rename
brew install rhino
brew install speedtest_cli
brew install rlwrap
brew install ssh-copy-id
brew install starship
brew install tree
brew install vbindiff
brew install watchman
brew install yarn
brew install zopfli

# https://getgrav.org/blog/macos-bigsur-apache-multiple-php-versions
# web dev tools
brew install openssl
brew install httpd

brew tap shivammathur/php

brew install shivammathur/php/php@5.6
brew install shivammathur/php/php@7.0
brew install shivammathur/php/php@7.1
brew install shivammathur/php/php@7.2
brew install shivammathur/php/php@7.3
brew install shivammathur/php/php@7.4
brew install shivammathur/php/php@8.0

brew install mariadb
brew install dnsmasq

# More binaries
# Install cask
brew tap homebrew/cask

# Install cask packages
# System tools
brew install --cask android-platform-tools
brew install --cask android-sdk
brew install --cask android-studio
brew install --cask araxis-merge
# brew install --cask atom
# brew install --cask balsamiq-mockups
# brew install --cask evernote
brew install --cask firefox
brew install --cask google-chrome
brew install --cask iterm2
# brew install --cask macdown
# brew install --cask mysqlworkbench
# brew install --cask phpstorm
brew install --cask robo-3t
brew install --cask sequel-pro
brew install --cask skitch
brew install --cask skype
brew install --cask slack
brew install --cask sourcetree
brew install --cask sqlitebrowser
# brew install --cask sublime-text
brew install --cask tableplus
brew install --cask the-unarchiver
# brew install --cask vagrant
# brew install --cask vagrant-manager
# brew install --cask virtualbox
# brew install --cask visual-paradigm-ce
brew install --cask visual-studio-code
# brew install --cask webstorm

# media
# brew install --cask airparrot
brew install --cask amazon-music
# brew install --cask bbc-iplayer-downloads
brew install --cask recordit
# brew install --cask transmission
brew install --cask vlc
brew install --cask whatsapp

# languages & tools
# brew install --cask go-agent
# brew install --cask go-server

# Remove outdated versions from the cellar.
brew cleanup
