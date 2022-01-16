#!/bin/bash

set -xe

sudo apt update && 
sudo apt install -y gdebi-core wget &&
wget -O ~/.dotfiles/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb" &&
sudo gdebi ~/.dotfiles/discord.deb

if [ $? -ne 0 ]
then
    echo "Unable to install discord..."
    exit 1
fi

rm ~/.dotfiles/discord.deb