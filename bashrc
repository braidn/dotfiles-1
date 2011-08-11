#!/bin/bash

PREVIEW="less"
[ -s /usr/bin/gloobus-preview ] && PREVIEW="gloobus-preview"
[ -s /Applications/Preview.app ] && PREVIEW="/Applications/Preview.app"

# Themes
for config_file in ~/bin/bash/themes/*.bash
	do
	  source $config_file
	done

# Functions
for config_file in ~/bin/bash/functions/*.bash
	do
	  source $config_file
	done

# Env Vars
for config_file in ~/bin/bash/env/*.bash
	do
	  source $config_file
	done

# Aliases
for config_file in ~/bin/bash/aliases/*.bash
	do
	  source $config_file
	done
	
	
	
# source `which virtualenvwrapper.sh`