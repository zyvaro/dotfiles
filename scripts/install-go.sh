#!/usr/bin/env bash

set -xe

GOVER=$(curl -s https://go.dev/dl/ | grep -o '<span>go.*linux-amd64.tar.gz</span>' | sed 's/<span>\(.*\)<\/span>/\1/' | sed 's/^[[:space:]]*//')
wget https://go.dev/dl/$GOVER
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf $GOVER
echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.bashrc

rm $GOVER
