# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="sorin"


alias ohmyzsh="subl -n ~/.oh-my-zsh"
alias dotfiles='subl -n ~/.dotfiles'

plugins=(osx autojump git github django brew extract python)

source $ZSH/oh-my-zsh.sh

source ~/.dotfiles/brngp.zsh #loading first my env `cuz the virtualenvwrapper plugin
