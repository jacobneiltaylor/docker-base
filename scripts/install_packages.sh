#!/bin/bash

set -eux

apt-get -y --no-install-recommends upgrade
apt-get -y --no-install-recommends install \
    unzip \
    supervisor \
    jq \
    apt-transport-https \
    gnupg2 \
    wget \
    python3-pip \
    lsb-release \
    ca-certificates \
    curl
