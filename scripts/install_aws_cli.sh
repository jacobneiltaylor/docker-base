#!/bin/bash

set -eux

export TMPDIR="/tmp/awscli"
export ARCH="aarch64"

if [ $(arch) = "x86_64" ]
then
    export ARCH="x86_64"
fi

mkdir -p /opt/aws
mkdir -p $TMPDIR/out

curl https://awscli.amazonaws.com/awscli-exe-linux-$ARCH.zip -o $TMPDIR/awscli.zip
unzip $TMPDIR/awscli.zip -d $TMPDIR/out

$TMPDIR/out/aws/install -b $BASEROOT/bin -i /opt/aws

rm -rf $TMPDIR
