#!/bin/bash

alias gi='git init && printf ".DS_Store\nThumbs.db\n" >> .gitignore && git add .gitignore && git commit -qm "Added standard .gitignore." && gl'


# http://www.jukie.net/~bart/blog/pimping-out-git-log
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%an %cr)%Creset' --abbrev-commit --date=relative"
alias glp='gl -p'
alias glm="gl master..."

# git status alias
alias gs='git status'
