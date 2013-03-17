#!/usr/bin/env zsh


setopt interactivecomments  # enable "#" in the shell
unsetopt correctall # i don't misstype because I use the tab so it is useless.
#
# export HOMEBREW_HOME=$(brew --prefix)
export __BRNGP_PLUGIN_PATH=$(dirname $0)


source $__BRNGP_PLUGIN_PATH/env.sh


# source $__BRNGP_PLUGIN_PATH/pip_completion.zsh
source $__BRNGP_PLUGIN_PATH/main.aliases.bash
source $__BRNGP_PLUGIN_PATH/main.functions.bash

epath
echo ""
python --version
