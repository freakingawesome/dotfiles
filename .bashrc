if [ $(pwd) == ~ ] || [ $(pwd) == / ]; then cd /c/proj; fi
alias open='cygstart'

alias gs='git status'
alias ga='git add --all'
alias gl='git log --all --graph --decorate'
alias gap='git add -p --all'
alias gai='git add -i --all'
alias gd='git diff'
alias gds='git diff --staged'
alias gdt='git difftool'
alias gdts='git difftool --staged'
alias gcm='git commit -m '
alias gr='git for-each-ref --sort=-committerdate refs/heads/'

set -o vi

PATH=$PATH:/c/tools/ruby215/bin
export PATH

