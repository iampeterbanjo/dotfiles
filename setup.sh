# setting up a new workstation
# bash setup.sh

## git
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get install git
sudo apt-get install git-extras

## fish shell
sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get install fish

# clipboard manager
sudo apt install clipit

## firefox nightly
sudo add-apt-repository ppa:ubuntu-mozilla-daily/ppa
sudo apt-get update
sudo apt-get install firefox-trunk

### asdf install - for dev software package management
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.4.0

#### For Ubuntu or other linux distros
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc

echo 'source ~/.asdf/asdf.fish' >> ~/.config/fish/config.fish
mkdir -p ~/.config/fish/completions; and cp ~/.asdf/completions/asdf.fish ~/.config/fish/completions

#### asdf mongodb
asdf plugin-add mongodb https://github.com/sylph01/asdf-mongodb.git
asdf install mongodb latest
asdf global mongodb latest

#### asdf elixir
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf install elixir 1.6.0
asdf global elixir 1.6.0

#### asdf golang
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf install golang 1.8.6
asdf global golang 1.8.6

# python req
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev

#### nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
nvm install stable

# thefuck
sudo apt update
sudo apt install python3-dev python3-pip
sudo pip3 install thefuck
pip install thefuck
echo 'eval $(thefuck --alias)' >> .bashrc

# guake
 sudo apt-get install -qyy guake
 
# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# fisherman
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fisher install z fzf upto dartfish

# powerline fonts
cd ~/Downloads
git clone https://github.com/powerline/fonts.git
cd fonts
bash install.sh
# then change terminal font to a Powerline font

# nautilus - add open terminal here
sudo apt-get install nautilus-open-terminal

# gnome shell
sudo apt-add-repository ppa:gnome3-team/gnome3
sudo apt-add-repository ppa:gnome3-team/gnome3-staging
sudo apt-get update
sudo apt-get install gnome-shell

# gnome extensions for themes
# sudo apt-get install gnome-shell-extensions

# numix theme
# apt://numix-gtk-theme #open in browser

# ark theme
# apt://arc-theme

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
