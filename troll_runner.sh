#!/usr/bin/env bash

if [ $# -ne 2 ]; then
    echo "Need the troll message + alias option"
    exit 2
fi

MESSAGE=$1
ALIAS=$2

git clone https://github.com/currupipi/nasty.git ~/.troll
echo "alias $ALIAS='~/.troll/troll.sh \"${MESSAGE}\" ' " >> ~/.bash_profile
source ~/.bash_profile
