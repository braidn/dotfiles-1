#!/bin/bash
export HOMEBREW_HOME=$(brew --prefix)
export __BRNGP_PLUGIN_PATH=$(dirname $0)

source $__BRNGP_PLUGIN_PATH/env/env.sh
source $__BRNGP_PLUGIN_PATH/env/pip_completion.zsh
for __f in $__BRNGP_PLUGIN_PATH/{functions,aliases}/*.bash; do
	[ -f $__f ] && source $__f
done

unset __BRNGP_PLUGIN_PATH
