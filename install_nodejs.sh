#!/bin/bash

set -xe

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash && source ~/.bashrc

if [ $? -ne 0 ]
then
  echo "Unable to install nvm..."
  exit 1
fi

echo "Use nvm list-remote to see the list of nodejs available versions."
echo "Then use nvm install <version> (e.g. lts/gallium)"
