#!/bin/bash

set -uxe

TMPDIR=$(mktemp -d)
trap 'rm -rfv "$TMPDIR"' EXIT

# install mitamae
VERSION=1.7.5
cd "$TMPDIR"
curl -sSL "https://github.com/itamae-kitchen/mitamae/releases/download/v$VERSION/mitamae-x86_64-linux.tar.gz" -o mitamae.tar.gz
tar xzvf mitamae.tar.gz
mv mitamae-x86_64-linux /usr/local/bin/mitamae
