#!/bin/bash

export TARGET_PIP=${1:-"$(which pip3)"}

$TARGET_PIP --disable-pip-version-check list --outdated --format=json | jq .[][\"name\"] | xargs -n1 $TARGET_PIP install -U
