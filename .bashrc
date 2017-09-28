if [ $(pwd) == ~ ] || [ $(pwd) == / ]; then cd /c/proj; fi
alias open='cygstart'

alias gs='git status'
alias ga='git add --all'
alias gl='git log --graph --decorate'
alias gla='git log --all --graph --decorate'
alias gap='git add -p --all'
alias gai='git add -i --all'
alias gd='clear && git diff'
alias gds='clear && git diff --staged'
alias gdt='git difftool'
alias gdts='git difftool --staged'
alias gc='git commit'
alias gcv='git commit -v'
alias gcm='git commit -m '
alias gr='git for-each-ref --sort=-committerdate refs/heads/'
alias gcp='git checkout -p'

set -o vi

PATH=$PATH:/c/tools/ruby215/bin:/c/proj/src/github.com/git/git/contrib/diff-highlight
export PATH

