#!/bin/bash

set -xe

echo "Downloading nvim nightly app image..."
wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document nvim

if [ $? -ne 0 ]; then
  echo "Unable to download nvim nightly app image..."
  exit 1
fi

echo "Setting executable permission..."
chmod +x nvim

echo "Moving binary to /usr/bin"
sudo mv nvim /usr/bin

cd ~
mkdir -p .config/nvim

echo "Installing vimplug..."
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if [ $? -ne 0 ]; then
  echo "Unable to install vimplug..."
  exit 1
fi

echo "Symlinking init.vim to ~/.config/nvim/init.vim"
ln -s ~/.dotfiles/init.vim ~/.config/nvim/init.vim

if [ $? -ne 0 ]; then
  echo "Unable to symlink init.vim"
  exit 1
fi
