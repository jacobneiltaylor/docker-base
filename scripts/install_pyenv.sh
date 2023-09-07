#!/bin/bash
export PYENV_ROOT=${1:-"/opt/pyenv"}

mkdir -p $PYENV_ROOT

git clone https://github.com/pyenv/pyenv.git $PYENV_ROOT

echo "export PATH=$PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH"
echo "export PYENV_ROOT=$PYENV_ROOT"
