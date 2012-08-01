# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

# ZSH_THEME="robbyrussell"
# ZSH_THEME="random"
# ZSH_THEME="arrow"
ZSH_THEME="sorin"
# ZSH_THEME="garyblessington"

# Example aliases
alias ze="subl -n ~/.zshrc"
alias ohmyzsh="subl -n ~/.oh-my-zsh"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

plugins=(osx autojump git github django brew extract osx python)

source $ZSH/oh-my-zsh.sh

source ~/.dotfiles/brngp.zsh #loading first my env `cauz the virtualenvwrapper plugin
