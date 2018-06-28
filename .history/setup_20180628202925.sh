#!/bin/bash

# copy installers to executable path
copy_to_path () {

}


# Fira Code
mkdir -p ~/.fonts/
wget https://github.com/tonsky/FiraCode/raw/master/FiraCode-Regular.otf -O ~/.fonts/FiraCode-Regular.otf
fc-cache -v

# update fish config
mv ~/.config/fish ~/.config/fish_backup
cd ~/.config/
git clone git@bitbucket.org:iampeterbanjo/fish.git

mkdir $HOME/bin
mkdir $HOME/projects

# variables
echo 'export PROJECTS=$HOME/projects' >> ~/.bashrc
echo 'export GOROOT=$(go env GOROOT)' >> ~/.bashrc
echo 'export GOPATH=$(go env GOPATH)' >> ~/.bashrc
echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bashrc
echo 'export FISHERMAN=~/.local/share/fisherman' >> ~/.bashrc

# direnv
sudo apt-get install direnv

# shfmt
go get -u mvdan.cc/sh/cmd/shfmt

# xclip for micro
sudo apt-get install xclip

# micro
curl https://getmic.ro | bash
mv ./micro $HOME/bin
# micro plugins
# plugin install fish
# plugin install editorconfig
# plugin install monokai-dark

# vscode
sudo add-apt-repository -y "deb https://packages.microsoft.com/repos/vscode stable main"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EB3E94ADBE1229CF
sudo apt update
sudo apt install code

# atom
sudo add-apt-repository ppa:webupd8team/atom
sudo apt update
sudo apt install atom

# sublime text 3
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt update
sudo apt install sublime-text-installer

# Resolve ENOSPC errors (lite-server, concurrently)
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

# nanobox
sudo bash -c "$(curl -fsSL https://s3.amazonaws.com/tools.nanobox.io/bootstrap/ci.sh)"
nanobox config set ci-mode false

# docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce
# check docker status
# sudo systemctl status docker
# run docker without sudo
sudo groupadd docker
sudo usermod -aG docker $USER
# su - ${USER}

# docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# docker-machine
curl -L https://github.com/docker/machine/releases/download/v0.13.0/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine && \
chmod +x /tmp/docker-machine && \
sudo cp /tmp/docker-machine /usr/local/bin/docker-machine

# yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install --no-install-recommends yarn
