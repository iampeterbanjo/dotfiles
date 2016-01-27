#
# EDITORS
#

alias vim               mvim
alias brackets          'open -a Brackets'
alias code              'open -n -b "com.microsoft.VSCode"'

#
# MAINTENANCE
#


alias aliases           'cat ~/.config/fish/config.fish'
alias editfishconfig    'vim ~/.config/fish/config.fish'
alias showfishconfig    'cat ~/.config/fish/config.fish'
alias reloadfishconfig  'source ~/.config/fish/config.fish'
alias edithostfile      'sudo mvim /etc/hosts'

#
# DEVELOPMENT
#

alias bsync             'browser-sync start --server . --xip --files="**/*.css, **/*.js, **/*.js" --directory'
alias pbcopy-ssh        'pbcopy < ~/.ssh/id_rsa.pub'

#
# GIT
#

alias ga                'git add -A'
alias gm                'git commit --amend -m'
alias gc                'git commit -am'
alias gitd              'git diff'
alias gs                'git status'
alias gco               'git checkout'
alias gcob              'git checkout -br'
alias gp                'git push -u --all'
alias gco-pages         'git checkout -b gh-pages'
alias gp-pages          'git push origin gh-pages'
alias gpp-pages         'git checkout gh-pages ; git merge master ; git checkout master ;git git push --all'

#
# VAGRANT
#

alias vs                'vagrant status'
alias vu                'vagrant up'
alias vh                'vagrant halt'
alias vr                'vagrant reload'
alias vbu               'vagrant box update'

#
# DIRECTORIES
#

alias cd-gosrc          'cd ~/Projects/golang/src'
alias cd-Github         'cd ~/Documents/GitHub/'
alias cd-homestead      'cd ~/Projects/homestead/'

alias cd-DG-website     'cd /Users/Peterb/Projects/directiongroup-website-tiled-ui'

alias cd-GBG-20083      'cd ~/Projects/20083-gbg-vos/public/wp-content/themes/gbg-vos-2020/'

alias cd-FJ-20411       'cd /Volumes/Clients/Fujitsu\ Global/20411_Fuj\ \&\ MS\ Security_Microsite/20411_Digital/03_Technical'

alias cd-PLT-20709      'cd ~/Volumes/Clients/Plantronics/20709_Mobile_responsive_campaign_sites/20709_Digital/03_Technical/Virtual_Collaboration'
alias cd-PLT-20221      'cd /Volumes/Clients/Plantronics/20221_Virtual-Collab_Execution/20221_Digital/03_Technical/landingpage'
alias cd-PLT-20709      'cd /Volumes/Clients/Plantronics/20709_Mobile_Responsive_Campaign_Sites/20709_Digital/03_Technical/Virtual_Collaboration/'

alias cd-TATA-20477     'cd /Volumes/Clients/Tata\ Communications/20477_Tata\ Customer\ Reference\ Kits/20477_Digital/03_Technical'

alias cd-citrix-dghub   'cd /Users/Peterb/Projects/Citrix/citrix-dghub'
