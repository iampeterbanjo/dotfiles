#!/usr/bin/env bash

sudo sysctl fs.inotify.max_user_watches=524288
sudo /bin/su -c "echo 'fs.inotify.max_user_watches=524288' >> /etc/sysctl.conf"
