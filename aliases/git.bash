#!/bin/bash


alias	gs="git status"
alias	gc="git commit"
alias	gi="git init"
alias	ga="git add"

alias gi='git init && printf ".DS_Store\nThumbs.db\n" >> .gitignore && git add .gitignore && git commit -qm "Added standard .gitignore." && gl'


# http://www.jukie.net/~bart/blog/pimping-out-git-log
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%an %cr)%Creset' --abbrev-commit --date=relative"
alias glp='gl -p'
alias glm="gl master..."

alias gd='git diff'
complete -o default -o nospace -F _git_diff gd
alias gds='git diff --cached'
complete -o default -o nospace -F _git_diff gds
alias gdh='git diff HEAD'