#!/usr/bin/env bash

curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher

echo 'export FISHERMAN=~/.local/share/fisherman' >> ~/.bashrc
