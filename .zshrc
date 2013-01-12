# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sorin"
DISABLE_AUTO_UPDATE="true"

# disabled plugins
plugins=(osx terminalapp autojump zsh-syntax-highlighting brew extract git github pip python)

source $ZSH/oh-my-zsh.sh
 #loading first my env `cuz the virtualenvwrapper plugin
source ~/.dotfiles/brngp.zsh

alias ohmyzsh="subl -n ~/.oh-my-zsh"
alias dotfiles='subl -n ~/.dotfiles'
