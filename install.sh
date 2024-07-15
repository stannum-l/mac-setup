#!/bin/bash
set -xeu

# Install Homebrew
/bin/bash -c " $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Homebrew packages
brew install asdf fzf git eza coreutils yq jq vim

##