#!/bin/bash

set -xe

sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test &&
sudo apt update && sudo apt install -y g++-11

if [ $? -ne 0 ]
then
  echo "Unable to install g++-11..."
fi

sudo apt update && sudo apt install -y clang-13

if [ $? -ne 0 ]
then
  echo "Unable to install clang-13..."
fi

sudo apt update && sudo apt install -y build-essential


if [ $? -ne 0 ]
then
  echo "Unable to install build-essential..."
  exit 1
fi
