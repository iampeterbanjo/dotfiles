#!/bin/bash

curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fisher install z fzf upto dartfish

echo 'export FISHERMAN=~/.local/share/fisherman' >> ~/.bashrc
