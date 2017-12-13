# setting up a new workstation

## git
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get install git
sudo apt-get install git-extras

## fish shell
sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get install fish

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

### asdf nodejs
# Imports Node.js release team's OpenPGP keys to main keyring
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

# thefuck
sudo apt update
sudo apt install python3-dev python3-pip
sudo pip3 install thefuck
pip install thefuck
echo 'eval $(thefuck --alias)' >> .bashrc

# guake
 sudo apt-get install -qyy guake

# fisherman
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fisher install z fzf

# powerline fonts
git clone https://github.com/powerline/fonts.git
cd fonts
bash install.sh
# then change terminal font to a Powerline font

# nautilus - add open terminal here
sudo apt-get install nautilus-open-terminal

# variables
export PROJECTS=/media/iampeterbanjo/data/projects
export GOROOT=$HOME/go
export GOPATH=$PROJECTS/lib/golang
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export FISHERMAN= ~/.local/share/fisherman

# Go Google App Engine SDK
export GAE_GO=$PROJECTS/lib/go_appengine
export PATH=$GAE_GO:$PATH

# dvorak keyboard at login
sudo gedit /etc/mdm/Init/Default
## before the last line `exit 0` add
/usr/bin/setxkbmap dvorak

# Resolve ENOSPC errors (lite-server, concurrently)
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
