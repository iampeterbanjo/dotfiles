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

# oh-my-fish
curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish

# nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
curl -sL get.fisherman.sh | fish
fisher install bass
alias nvm 		"bass source ~/.nvm/nvm.sh ';' nvm"
nvm install stable
npm install -g npm

# powerline fonts
git clone https://github.com/powerline/fonts.git
cd fonts
bash install.sh

# spf-13 vim
sh <(curl https://j.mp/spf13-vim3 -L)


# nautilus
sudo apt-get install nautilus-open-terminal

# variables
export PROJECTS=/media/iampeterbanjo/data/projects
export GOROOT=$HOME/go
export GOPATH=$PROJECTS/lib/golang
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export FISHERMAN= ~/.local/share/fisherman

# dvorak keyboard at login
sudo gedit /etc/mdm/Init/Default
## before the last line `exit 0` add
/usr/bin/setxkbmap dvorak

# Resolve ENOSPC errors (lite-server, concurrently)
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
