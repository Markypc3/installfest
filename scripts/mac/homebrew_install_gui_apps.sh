#-------------------------------------------------------------------------------
# Use Brew Cask to install application images (mac/homebrew_install_gui_apps.sh)
#-------------------------------------------------------------------------------

packagelist=(

# PJ: removed b/c too many students were afraid of having double
# installs. Added note to README to this effect.

# Our browser(s)
# ----------------------------------------------------------------------
# google-chrome
# google-chrome-canary

# firefox
# firefox-nightly
# ----------------------------------------------------------------------

# Out text editor
# ----------------------------------------------------------------------
# The Text Editor, Sublime Text 3
# (phlco) atom won't support files over 2mb therefore we'll hold off.

sublime-text
# ----------------------------------------------------------------------

# Our productivity suite
# ----------------------------------------------------------------------
# Our chat client
slack

# Our window manager
spectacle

# A screenshot sharing tool
# mac2imgur

# A clipboard enhancer
# jumpcut

# Flux, makes the color of your computer's display adapt to the time of day
# flux

# An alternative terminal
#iterm2
# ----------------------------------------------------------------------

# List of useful Quick Look plugins for developers
# See http://www.makeuseof.com/tag/quick-look-plugins-make-file-browsing-os-x-even-better/
# ----------------------------------------------------------------------
# qlcolorcode qlstephen qlmarkdown quicklook-json
# qlprettypatch quicklook-csv betterzipql
# webp-quicklook suspicious-package
# ----------------------------------------------------------------------

# The X Window Server
# ----------------------------------------------------------------------
# See:
#   - https://en.wikipedia.org/wiki/XQuartz
#   - https://support.apple.com/en-us/HT201341
# Cross-platform *nix window server, useful for a number of developer
# and open-source tools (Inkscape, Gimp, Meld, etc.)
# xquartz
# ----------------------------------------------------------------------

)

inform "Using Homebrew Cask to install GUI apps..." true
brew cask install ${pkgs[@]}
show "Complete!"
