 #loading first my env `cuz the virtualenvwrapper plugin
source ~/.dotfiles/brngp.zsh

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="sorin"
DISABLE_AUTO_UPDATE="true"

# disabled plugins
plugins=(osx cloudapp zsh-syntax-highlighting autojump brew django extract svn mercurial git github pip python mercurial node npm terminalapp virtualenvwrapper gem)

source $ZSH/oh-my-zsh.sh


alias ohmyzsh="subl -n ~/.oh-my-zsh"
alias dotfiles='subl -n ~/.dotfiles'
