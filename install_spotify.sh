#!/bin/bash

set -xe

sudo snap install spotify

if [ $? -ne 0 ]
then
    echo "Unable to install spotify..."
    exit 1
fi