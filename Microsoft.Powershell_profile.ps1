try { $null = gcm pshazz -ea stop; pshazz init } catch { }

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# SYSTEM
function whoareyou () {
  "i am $env:COMPUTERNAME"
}

function gits() { git stats }
function gitemail() { git config --global user.email }
function gitname() { git config --global user.name }
function gita() { git add -A }
function gitac() { git add -A; git commit -am $args }
function gituau() { git update-index --assume-unchanged }
function gitunu() { git update-index --no-assume-unchanged }
function gitbr() { git branch }
function gitbrso() { git branch --set-upstream-to=origin/(git rev-parse --abbrev-ref HEAD) }

# checkout branches using fzf search
function gitbrco() { git branch | fzf | string trim | read -l result; and gco $result }
function gitm() { git commit --amend -m }
function gitc() { git commit -am $args }
function gitcl() { git clone $args }
function gitco() { git checkout $args }
function gitcob() { git checkout -br $args }
# git restore file from last checkout
function gitcof() { git checkout -- $args }
function gitd() { git diff $args }
# git log graph
function gitl() { git log --oneline }
function gitlg() { git log --oneline --graph --all --decorate}
function gitmi() { git_branch_name | read -l result; and git checkout $1; and git pull; and git merge $result }
function gitp() { git push}
function gitpo() { git push -u origin(git rev-parse --abbrev-ref HEAD) }
function gitpl() { git pull}
function gitpom() { git push -u origin master }
function gitrro() { git remote rm origin }
function gitrao() { git remove add origin }
# reset to origin/undo git merge
function gitzmh() { git reset --hard ORIG_HEAD }
# undo merge of commite using hash
function gitzmh() { git revert -m 1 }
# undo last commit
function gitzc() { git reset --soft HEAD^ }
# redo last commit
function gitzzc() { git commit -a -c ORIG_HEAD }
function gits() { git status }
function gitss() { git stash save }
function gitsl() { git stash list }
function gitcopages() { git checkout -b gh-pages }
function gitppages() { git push origin gh-pages }
function gitsyncpages() { git checkout gh-pages ; git merge master ; git checkout master ; git push --all }
function gitra() { git remote add }
