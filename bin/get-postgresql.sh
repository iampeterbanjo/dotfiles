#!/usr/bin/env fish

# install postgresql db
switch (uname)
  case Linux
    sudo apt-get update
    sudo apt-get install postgresql postgresql-contrib

    echo 'postgresql installed on Linux'

    sudo -u postgres createuser --interactive
  case Darwin
    brew install postgresql
    ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
    brew services start postgresql

    echo 'postgresql installed on MacOS'
    echo 'create user with'
    echo '$> psql'
    echo '$> createuser --interactive'
end
