#!/bin/bash

set -eux

export VERSION=${1:-latest}

if [ $VERSION = "latest" ]
then
    export VERSION=$(cat ./latest.txt)
fi

docker build -t jacobneiltaylor/docker-base:$VERSION-devel --build-arg VERSION=$VERSION . 
