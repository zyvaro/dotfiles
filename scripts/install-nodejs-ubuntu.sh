#!/usr/bin/env bash

set -xe
curl -fsSL https://deb.nodesource.com/setup_23.x -o nodesource_setup.sh
sudo -E bash nodesource_setup.sh
sudo apt install -y nodejs

mkdir -p ~/.npm-global/lib
npm config set prefix '~/.npm-global'
echo "export PATH=\$PATH:~/.npm-global/bin" >> ~/.bashrc
