#
# EDITORS
#

alias vim               mvim
alias brackets          'open -a Brackets'
alias code              'open -n -b "com.microsoft.VSCode"'

#
# MAINTENANCE
#

alias editfishconfig    'vim ~/.config/fish/config.fish'
alias showfishconfig    'cat ~/.config/fish/config.fish'
alias reloadfishconfig  'source ~/.config/fish/config.fish'

#
# DEVELOPMENT
#

alias bsync             'browser-sync start --server . --xip --files="**/*.css, **/*.js, **/*.js" --directory'

#
# GIT
#

alias gitadd            'git add -A'
alias gitcm             'git commit -am'
alias gitd              'git diff'
alias gits              'git status'
alias gitch             'git checkout'
alias gitcob            'git checkout -br'
alias gitpush           'git push -u --all'
alias gitco-ghpages     'git checkout -b gh-pages'
alias gitpush-ghpages   'git push origin gh-pages'
alias gitsync-ghpages   'git checkout gh-pages ; git merge master ; git checkout master ;git git push --all'


#
# VAGRANT
#

alias vtstat            'vagrant status'
alias vtup              'vagrant up'
alias vthalt            'vagrant halt'
alias vtreload          'vagrant reloadfishconfig'

#
# DIRECTORIES
#

alias cd-homestead      'cd ~/Projects/homestead/'
