#!/usr/bin/env bash

# install proton vpn
# https://github.com/ProtonVPN/protonvpn-cli

sudo apt-get install openvpn wget dialog
sudo wget -O protonvpn-cli.sh https://raw.githubusercontent.com/ProtonVPN/protonvpn-cli/master/protonvpn-cli.sh
sudo chmod +x protonvpn-cli.sh
sudo mv protonvpn-cli.sh /usr/bin/protonvpn
sudo protonvpn --init
