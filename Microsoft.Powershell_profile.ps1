try { $null = gcm pshazz -ea stop; pshazz init } catch { }

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

function gs() { git stats }
function gemail() { git config --global user.email }
function gname() { git config --global user.name }
function ga() { git add -A }
function gac() { git add -A; git commit -am }
function guau() { git update-index --assume-unchanged }
function gunu() { git update-index --no-assume-unchanged }
function gbr() { git branch }
function gbrso() { git branch --set-upstream-to=origin/(git rev-parse --abbrev-ref HEAD) }

# checkout branches using fzf search
function gbrco() { git branch | fzf | string trim | read -l result; and gco $result }
function gm() { git commit --amend -m }
function gc() { git commit -am }
function gcl() { git clone }
function gco() { git checkout }
function gcob() { git checkout -br }
# git restore file from last checkout
function gcof() { git checkout -- }
function gd() { git diff }
# git log graph
function gl() { git log --oneline }
function glg() { git log --oneline --graph --all --decorate}
function gmi() { git_branch_name | read -l result; and git checkout $1; and git pull; and git merge $result }
function gp() { git push}
function gpo() { git push -u origin(git rev-parse --abbrev-ref HEAD) }
function gpl() { git pull}
function gpom() { git push -u origin master }
function grro() { git remote rm origin }
function grao() { git remove add origin }
# reset to origin/undo git merge
function gzmh() { git reset --hard ORIG_HEAD }
# undo merge of commite using hash
function gzmh() { git revert -m 1 }
# undo last commit
function gzc() { git reset --soft HEAD^ }
# redo last commit
function gzzc() { git commit -a -c ORIG_HEAD }
function gs() { git status }
function gss() { git stash save }
function gsl() { git stash list }
function gcopages() { git checkout -b gh-pages }
function gppages() { git push origin gh-pages }
function gsyncpages() { git checkout gh-pages ; git merge master ; git checkout master ; git push --all }
function gra() { git remote add }
