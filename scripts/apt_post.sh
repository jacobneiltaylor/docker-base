#!/bin/bash

set -eux

rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /root/.ssh/id_rsa* /var/cache/apt/archives/*.deb
apt-get autoremove --purge
apt-get purge -y --auto-remove \
    -o APT::Install-Recommends=false \
    -o APT::Install-Suggests=false \
    -o APT::AutoRemove::RecommendsImportant=false \
    -o APT::AutoRemove::SuggestsImportant=false && \
    apt-get autoremove -y --purge \
    -o APT::Install-Recommends=false \
    -o APT::Install-Suggests=false \
    -o APT::AutoRemove::RecommendsImportant=false \
    -o APT::AutoRemove::SuggestsImportant=false && \
    apt-get clean