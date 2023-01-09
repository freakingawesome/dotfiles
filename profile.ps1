function GitAlias-gp { git pull }
function GitAlias-gs { git status }
function GitAlias-ga { git add --all }
function GitAlias-gl { git log --graph --decorate }
function GitAlias-gla { git log --all --graph --decorate }
function GitAlias-gan { git add -N --all }
function GitAlias-gap { git add -p --all }
function GitAlias-ganp { git add -pN --all }
function GitAlias-gai { git add -i --all }
function GitAlias-gca { git commit --amend }
function GitAlias-gd { clear && git diff }
function GitAlias-gds { clear && git diff --staged }
function GitAlias-gdt { git difftool }
function GitAlias-gdts { git difftool --staged }
function GitAlias-gc { git commit }
function GitAlias-gcv { git commit -v }
function GitAlias-gcm { git commit -m  }
function GitAlias-gr { git for-each-ref --sort=-committerdate refs/heads/ }
function GitAlias-grh { git for-each-ref --sort=-committerdate refs/heads/ | head }
function GitAlias-gcp { git checkout -p }
function GitAlias-gfodd { git fetch origin develop:develop }

Set-Alias -Force -Name gp -Value GitAlias-gp
Set-Alias -Name gs -Value GitAlias-gs
Set-Alias -Name ga -Value GitAlias-ga
Set-Alias -Force -Name gl -Value GitAlias-gl
Set-Alias -Name gla -Value GitAlias-gla
Set-Alias -Name gan -Value GitAlias-gan
Set-Alias -Name gap -Value GitAlias-gap
Set-Alias -Name ganp -Value GitAlias-ganp
Set-Alias -Name gai -Value GitAlias-gai
Set-Alias -Name gca -Value GitAlias-gca
Set-Alias -Name gd -Value GitAlias-gd
Set-Alias -Name gds -Value GitAlias-gds
Set-Alias -Name gdt -Value GitAlias-gdt
Set-Alias -Name gdts -Value GitAlias-gdts
Set-Alias -Force -Name gc -Value GitAlias-gc
Set-Alias -Name gcv -Value GitAlias-gcv
Set-Alias -Force -Name gcm -Value GitAlias-gcm
Set-Alias -Name gr -Value GitAlias-gr
Set-Alias -Name grh -Value GitAlias-grh
Set-Alias -Name gcp -Value GitAlias-gcp
Set-Alias -Name gfodd -Value GitAlias-gfodd


