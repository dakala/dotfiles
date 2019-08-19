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
# Install Bash 4.
brew install bash
brew install bash-completion2

# dakala - Add the new shell to the list of legit shells
sudo bash -c "echo /usr/local/bin/bash >> /private/etc/shells"
# dakala - Change the shell for the user - no need to do: sudo chsh -s /usr/local/bin/bash????
chsh -s /usr/local/bin/bash

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

brew install openldap
brew install libiconv

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
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
brew install dnsmasq
brew install git
# brew install go
brew install gpg1
brew install gradle
brew install htop
brew install lynx
brew install mariadb
brew install mongodb
brew install node
brew install p7zip
brew install rename
brew install rhino
brew install speedtest_cli
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install watchman
brew install yarn
brew install zopfli

# More binaries
# Install cask
brew tap caskroom/cask

# Install cask packages
# System tools
brew cask install android-platform-tools
brew cask install android-sdk
brew cask install android-studio
brew cask install araxis-merge
# brew cask install atom
brew cask install balsamiq-mockups
brew cask install evernote
brew cask install firefox
brew cask install google-chrome
brew cask install iterm2
brew cask install macdown
brew cask install mysqlworkbench
brew cask install robo-3t
brew cask install sequel-pro
brew cask install skitch
brew cask install skype
# brew cask install slack
brew cask install sourcetree
brew cask install sqlitebrowser
brew cask install sublime-text
brew cask install the-unarchiver
brew cask install vagrant
brew cask install vagrant-manager
brew cask install virtualbox
brew cask install visual-paradigm-ce
brew cask install visual-studio-code

# media
brew cask install airparrot
brew cask install amazon-music
# brew cask install bbc-iplayer-downloads
brew cask install recordit
brew cask install transmission
brew cask install vlc

# languages & tools
# brew cask install go-agent
# brew cask install go-server
brew cask install java

# Remove outdated versions from the cellar.
brew cleanup
