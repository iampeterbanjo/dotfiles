#!/usr/bin/env bash

# changes all js file extensions in current and
# sub-directories to ts

find . -name "*.js" -exec rename 's/\.js$/.jsx/' {} \;
