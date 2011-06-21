#!/bin/bash

export GREP_OPTIONS="--exclude=\*.svn\*"
export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

# [#] Editor
export EDITOR='mate -w'  # OS-X SPECIFIC - TextMate, w is to wait for TextMate window to close

# [#] History handling
export HISTCONTROL=erasedups # Erase duplicates
export HISTSIZE=10000 # resize history size

# Adding Support for other OSes
PREVIEW="less"
[ -s /usr/bin/gloobus-preview ] && PREVIEW="gloobus-preview"
[ -s /Applications/Preview.app ] && PREVIEW="/Applications/Preview.app"

# Themes
if [ -d ~/bin/bash/themes ];
then
	for config_file in ~/bin/bash/themes/*.bash
	do
	  source $config_file
	done
fi


# Functions
if [ -d ~/bin/bash/functions ];
then
	for config_file in ~/bin/bash/functions/*.bash
	do
	  source $config_file
	done
fi


# Env Vars
if [ -d ~/bin/bash/env ];
then
	for config_file in ~/bin/bash/env/*.bash
	do
	  source $config_file
	done
fi
# Aliases
if [ -d ~/bin/bash/aliases ];
then
	for config_file in ~/bin/bash/aliases/*.bash
	do
	  source $config_file
	done
fi