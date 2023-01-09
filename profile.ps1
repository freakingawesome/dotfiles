
function GitAlias-gp {
    [parameter(mandatory=$false, position=0, ValueFromRemainingArguments=$true)]$args
    git pull @args
}
function GitAlias-gs {
    [parameter(mandatory=$false, position=0, ValueFromRemainingArguments=$true)]$args
    git status @args
}
function GitAlias-ga {
    [parameter(mandatory=$false, position=0, ValueFromRemainingArguments=$true)]$args
    git add --all @args
}
function GitAlias-gl {
    [parameter(mandatory=$false, position=0, ValueFromRemainingArguments=$true)]$args
    git log --graph --decorate @args
}
function GitAlias-gla {
    [parameter(mandatory=$false, position=0, ValueFromRemainingArguments=$true)]$args
    git log --all --graph --decorate @args
}
function GitAlias-gan {
    [parameter(mandatory=$false, position=0, ValueFromRemainingArguments=$true)]$args
    git add -N --all @args
}
function GitAlias-gap {
    [parameter(mandatory=$false, position=0, ValueFromRemainingArguments=$true)]$args
    git add -p --all @args
}
function GitAlias-ganp {
    [parameter(mandatory=$false, position=0, ValueFromRemainingArguments=$true)]$args
    git add -pN --all @args
}
function GitAlias-gai {
    [parameter(mandatory=$false, position=0, ValueFromRemainingArguments=$true)]$args
    git add -i --all @args
}
function GitAlias-gca {
    [parameter(mandatory=$false, position=0, ValueFromRemainingArguments=$true)]$args
    git commit --amend @args
}
function GitAlias-gd {
    [parameter(mandatory=$false, position=0, ValueFromRemainingArguments=$true)]$args
    clear && git diff @args
}
function GitAlias-gds {
    [parameter(mandatory=$false, position=0, ValueFromRemainingArguments=$true)]$args
    clear && git diff --staged @args
}
function GitAlias-gdt {
    [parameter(mandatory=$false, position=0, ValueFromRemainingArguments=$true)]$args
    git difftool @args
}
function GitAlias-gdts {
    [parameter(mandatory=$false, position=0, ValueFromRemainingArguments=$true)]$args
    git difftool --staged @args
}
function GitAlias-gc {
    [parameter(mandatory=$false, position=0, ValueFromRemainingArguments=$true)]$args
    git commit @args
}
function GitAlias-gcv {
    [parameter(mandatory=$false, position=0, ValueFromRemainingArguments=$true)]$args
    git commit -v @args
}
function GitAlias-gcm {
    [parameter(mandatory=$false, position=0, ValueFromRemainingArguments=$true)]$args
    git commit -m @args
}
function GitAlias-gr {
    [parameter(mandatory=$false, position=0, ValueFromRemainingArguments=$true)]$args
    git for-each-ref --sort=-committerdate refs/heads/ @args
}
function GitAlias-grh {
    [parameter(mandatory=$false, position=0, ValueFromRemainingArguments=$true)]$args
    git for-each-ref --sort=-committerdate refs/heads/ | head @args
}
function GitAlias-gcp {
    [parameter(mandatory=$false, position=0, ValueFromRemainingArguments=$true)]$args
    git checkout -p @args
}
function GitAlias-gfodd {
    [parameter(mandatory=$false, position=0, ValueFromRemainingArguments=$true)]$args
    git fetch origin develop:develop @args
}

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


