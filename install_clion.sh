#!/bin/bash

set -xe

sudo snap install clion --classic

if [ $? -ne 0 ]
then
  echo "Unable to install Clion..."
  exit 1
fi
