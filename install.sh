#!/usr/bin/env bash

set -xe

sudo apt install stow curl

./scripts/install-go.sh
./scripts/install-nvim

# Setup tmux
sudo apt install fzf tmux
stow tmux-sessionizer/ tmux/
sudo cp ./scripts/tmux-sessionizer /usr/local/bin
echo "bind -x '\"\C-x\C-f\":\"tmux-sessionizer\"'" >> ~/.bashrc
