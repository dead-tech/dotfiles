#!/bin/bash

set -xe

wine --version

if [ $? -ne 0 ]
then
  echo "First install wine please..."
  exit 1
fi

wget http://app.prntscr.com/build/setup-lightshot.exe

if [ $? -ne 0 ]
then
  echo "Unable to download the setup..."
  exit 1
fi

wine ./setup-lightshot.exe

if [ $? -ne 0 ]
then
  echo "Unable to wine the setup..."
  exit 1
fi

rm ./setup-lightshot.exe

if [ $? -ne 0 ]
then
  echo "Unable to remove the setup after it has been used..."
  exit 1
fi
