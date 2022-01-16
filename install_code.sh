#!/bin/bash

set -xe

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg

if [ $? -ne 0 ]
then
  echo "Something went wrong while installing the apt repository (Step 1)"
  exit 1
fi

sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/


if [ $? -ne 0 ]
then
  echo "Something went wrong while installing the apt repository (Step 2)"
  exit 1
fi

sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'


if [ $? -ne 0 ]
then
  echo "Something went wrong while installing the apt repository (Step 3)"
  exit 1
fi

rm -f packages.microsoft.gpg
if [ $? -ne 0 ]
then
  echo "Unable to delete packages.microsoft.gpg file"
  exit 1
fi

sudo apt install apt-transport-https
sudo apt update
sudo apt install -y code
