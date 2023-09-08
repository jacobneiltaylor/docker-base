#!/bin/bash
export TFENV_VERSION=${1:-"3.0.0"}
export TFENV_ROOT=${2:-"/opt/tfenv-$TFENV_VERSION"}

curl -L --proto '=https' --tlsv1.2 "https://github.com/tfutils/tfenv/archive/refs/tags/v$TFENV_VERSION.tar.gz" | tar -C /tmp -zxf -
mv /tmp/tfenv* $TFENV_ROOT

echo "export PATH=$TFENV_ROOT/bin:$PATH"
