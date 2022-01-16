#!/bin/bash

set -xe

sudo snap install discord

if [ $? -ne 0 ]
then
    echo "Unable to install discord..."
    exit 1
fi