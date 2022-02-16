#!/bin/bash

set -xe

sudo apt update && sudo apt install zsh -y &&
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

if [ $? -ne 0 ]; then
  echo "Unable to install oh-my-zsh..."
  exit 1
fi
