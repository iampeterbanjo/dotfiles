#
# EDITORS
#

alias editor		vim
alias vim               mvim
alias brackets          'open -a Brackets'
alias code              'open -n -b "com.microsoft.VSCode"'

#
# SSH
#


alias sshnewkey 	'ssh-keygen -t rsa -b 4096 -C' #email
alias sshaddkey		'ssh-agent -s; ssh-add'

#
# MAINTENANCE
#

alias sudo              'sudo '
alias aliases           'cat ~/.config/fish/config.fish'
alias editfishconfig    'editor ~/.config/fish/config.fish'
alias showfishconfig    'cat ~/.config/fish/config.fish'
alias reloadfishconfig  'source ~/.config/fish/config.fish'
alias edithostfile      'sudo editor /etc/hosts'

#
# DEVELOPMENT
#

alias bsync             'browser-sync start --server . --xip --files="**/*.css, **/*.js, **/*.html" --directory'
alias pbcopy-ssh        'pbcopy < ~/.ssh/id_rsa.pub'
alias testem-proxy      'browser-sync start --proxy localhost:7357 --xip --no-open --port 4000'

#
# GIT
#

alias ga                'git add -A'
alias gac               'git add -A; git commit -am'
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
# OTHER
#

alias tweet             'twit-cli tweet'


