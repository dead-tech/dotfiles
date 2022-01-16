#!/bin/bash

set -xe

mkdir -p ~/.urxvt/ext && cd ~/.urxvt/ext &&
wget https://raw.githubusercontent.com/rexim/dotfiles/master/.urxvt/ext/resize-font
