#!/bin/bash
export PYENV_VERSION=${1:-"2.3.26"}
export PYENV_ROOT=${2:-"/opt/pyenv-$PYENV_VERSION"}

mkdir -p $PYENV_ROOT

curl -L --proto '=https' --tlsv1.2 "https://github.com/pyenv/pyenv/archive/refs/tags/v$PYENV_VERSION.tar.gz" | tar -C /tmp -zxf -
mv /tmp/pyenv* $PYENV_ROOT

echo "export PATH=$PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH"
echo "export PYENV_ROOT=$PYENV_ROOT"
