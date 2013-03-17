# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sorin"

# disabled plugins
# plugins=(osx autojump brew extract git github pip python)
# plugins=(osx terminalapp autojump zsh-syntax-highlighting brew extract git github pip python)

source ~/.dotfiles/brngp.zsh

alias ohmyzsh="subl -n ~/.oh-my-zsh"
alias dotfiles='subl -n ~/.dotfiles'

source $ZSH/oh-my-zsh.sh
