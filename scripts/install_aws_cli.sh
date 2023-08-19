#!/bin/bash

set -eux

export TMPDIR="/tmp/awscli"

mkdir -p /opt/aws
mkdir -p $TMPDIR/out

wget -O $TMPDIR/awscli.zip https://awscli.amazonaws.com/awscli-exe-linux-$(arch).zip
unzip $TMPDIR/awscli.zip -d $TMPDIR/out

$TMPDIR/out/aws/install -b $BASEROOT/bin -i /opt/aws

rm -rf $TMPDIR
