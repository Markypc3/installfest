#-------------------------------------------------------------------------------
# Install Homebrew (mac/homebrew_install.sh)
#-------------------------------------------------------------------------------

# Installs Homebrew, our package manager
# http://brew.sh/
if ! command -v brew >& /dev/null; then
  echo "Loading Homebrew installation script..."
  # piping echo to simulate hitting return in the brew install script
  echo | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  show "Complete!"
else
  show "Homebrew is already installed!"
  inform "Updating Homebrew and formulae..." true
  brew upgrade # Upgrade any already-installed formulae
  show "Complete!"
fi

show brew doctor

inform "Installing Homebrew apps and taps..." true
curl https://raw.githubusercontent.com/Markypc3/installfest/master/Brewfile | brew bundle --file=-

# Ensures all tapped formula are symlinked into Library/Formula
# and prunes dead formula from Library/Formula.
brew tap --repair
brew prune

# Remove outdated versions from the cellar
brew cleanup
brew cask cleanup
show "Complete!"
