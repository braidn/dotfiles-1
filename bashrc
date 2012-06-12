#!/bin/bash

__d=$(dirname $0)

for __f in $__d/{functions,aliases,env}/*.bash; do
	[ -f $__f ] && . $__f 2>&1 >/dev/null
done

unset __f __d
