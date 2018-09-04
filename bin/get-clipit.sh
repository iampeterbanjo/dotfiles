#!/usr/bin/env bash

sudo apt install clipit

sed -i 's/show_indexes=false/show_indexes=true/' ~/.config/clipit/clipitrc
sed -i 's/history_key=<Ctrl><Alt>H/history_key=<Alt>J/' ~/.config/clipit/clipitrc
