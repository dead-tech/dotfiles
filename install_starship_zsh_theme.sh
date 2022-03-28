#!/bin/bash

 set -xe

 if ! cargo --version; then
   echo "cargo not found defaulting to curl"
   curl -sS https://starship.rs/install.sh | sh
 fi

 cargo install starship --locked && echo 'eval "$(starship init zsh)"' >> ~/.zshrc
