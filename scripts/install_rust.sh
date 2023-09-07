#!/bin/bash
export RUST_VERSION=${1:-"1.72.0"}
export RUST_ROOT=${2:-"/opt/rust$RUST_VERSION"}
export RUSTUP_HOME=$RUST_ROOT
export CARGO_HOME=$RUST_ROOT

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash -s -- -y --default-toolchain=$RUST_VERSION &> /dev/null

echo "export PATH=$RUST_ROOT/bin:$PATH"
echo "export RUSTUP_HOME=$RUST_ROOT"
echo "export CARGO_HOME=$RUST_ROOT"
