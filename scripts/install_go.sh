#!/bin/bash
export GO_VERSION=${1:-"1.21.1"}
export GO_ROOT=${2:-"/opt/go$GO_VERSION/"}
export GO_ARCH="arm64"
export ARCH=$(arch)
export GOPATH="$GO_ROOT/local"
export GOBIN="$GO_ROOT/local/bin"

if [ $(arch) = "x86_64" ]
then
    export GO_ARCH="amd64"
fi

mkdir -p $GOBIN
curl -L --proto '=https' --tlsv1.2 "https://go.dev/dl/go$GO_VERSION.linux-$GO_ARCH.tar.gz" | tar -C /opt -zxf -

echo "export PATH=$GOBIN:$GO_ROOT/bin:$PATH"
echo "export GOPATH=$GOPATH"
echo "export GOBIN=$GOBIN"
