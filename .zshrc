unset MAILCHECK

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

# robbyrussell [default]
# dstufft
# steeef
ZSH_THEME="robbyrussell"

# Example aliases
alias ze="subl -n ~/.zshrc"
alias ohmyzsh="subl -n ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"
# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(virtualenvwrapper autojump git github django brew cloudapp extract github osx python svn fabric gibo)

# plugins=(virtualenvwrapper autojump git github django extract github osx python)


source $ZSH/oh-my-zsh.sh

. ~/.dotfiles/brngp.zsh
