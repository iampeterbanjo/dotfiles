# setting up a new workstation

## git
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get install git

## fish shell
sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get install fish

# nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
curl -sL get.fisherman.sh | fish
fisher install bass
alias nvm 		"bass source ~/.nvm/nvm.sh ';' nvm"
nvm install stable

