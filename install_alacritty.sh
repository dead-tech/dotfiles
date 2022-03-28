#!/bin/bash

set -xe

if ! cargo --version &> /dev/null; then
  echo 'cargo not found'
  exit 1
fi

cargo install alacritty
