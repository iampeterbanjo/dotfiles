#!/usr/bin/env bash

# run command in the background
# with no output
nohup "$@" &>/dev/null &
