#!/bin/bash

export __BRNGP_PLUGIN_PATH=$(dirname $0)

for __f in $__BRNGP_PLUGIN_PATH/{functions,aliases}/*.bash; do
	[ -f $__f ] && . $__f 2>&1 >/dev/null
done
. $__BRNGP_PLUGIN_PATH/env/env.sh


unset __BRNGP_PLUGIN_PATH
