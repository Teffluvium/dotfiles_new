#!/usr/bin/env bash
#
# Install homebrew if it's not already installed

if ! [ `uname` == 'Darwin' ]; then
  echo "Not running MacOS.  Skipping Homebrew installation"
  exit 0
fi

if ! type brew > /dev/null 2>&1; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
