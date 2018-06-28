#!/bin/bash

sudo bash -c "$(curl -fsSL https://s3.amazonaws.com/tools.nanobox.io/bootstrap/ci.sh)"
nanobox config set ci-mode false
