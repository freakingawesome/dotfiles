alias open='cygstart'

function gf() {
    if [ -z "$1" ]; then
        git fetch
    else
        git fetch origin "$1":"$1"
    fi
}

alias gp='git pull'
alias gs='git status'
alias ga='git add --all'
alias gl='git log --graph --decorate'
alias gla='git log --all --graph --decorate'
alias gan='git add -N --all'
alias gap='git add -p --all'
alias ganp='git add -pN --all'
alias gai='git add -i --all'
alias gca='git commit --amend'
alias gd='clear && git diff'
alias gds='clear && git diff --staged'
alias gdt='git difftool'
alias gdts='git difftool --staged'
alias gc='git commit'
alias gcv='git commit -v'
alias gcm='git commit -m '
alias gr='git for-each-ref --sort=-committerdate refs/heads/'
alias grh='git for-each-ref --sort=-committerdate refs/heads/ | head'
alias gcp='git checkout -p'
alias gfodd='git fetch origin develop:develop'

set -o vi

PATH=$PATH:/c/tools/ruby215/bin:/c/proj/src/github.com/git/git/contrib/diff-highlight
export PATH

# Read base64 encoded lines from stdin and spit out their decoded values
b64d() { while read line; do echo $line | base64 -d; echo; done }

newpost() { POST=post/$(date -I)-$1.md; hugo new $POST; vim content/$POST; }

remove-merge-detritus() { find . -regextype posix-egrep \( -regex '.*_(BACKUP|BASE|LOCAL|REMOTE)_.*' -o -name '*.orig' \) | xargs --no-run-if-empty rm; }
