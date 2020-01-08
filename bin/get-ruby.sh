#!/usr/bin/env bash

version=2.6.5

brew install rbenv
rbenv install "$version"
rbenv global "$version"
rbenv init fish
