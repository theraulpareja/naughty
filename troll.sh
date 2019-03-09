#!/usr/bin/env bash

if [ $# -ne 1 ]; then
    echo 'Need at least 1 param for the troll message'
    exit 1
fi

MESSAGE=$1
IMAGE=https://gist.githubusercontent.com/luiscoms/f3703016ee218fd5283b/raw/1ef9722e60809fab2a4991b2e4cee8f13a6ab193/trollface


trap ctrl_c INT
trap ctrl_z SIGTSTP

ctrl_c(){
    curl $IMAGE
    echo "TROOOOLLLEDDDDD"
}

ctrl_z(){
    curl $IMAGE
    echo "TROOOOLLLEDDDDD"
}


while true; do
    echo "$MESSAGE"
    sleep 3
done

