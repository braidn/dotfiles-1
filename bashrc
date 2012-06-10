#!/bin/bash

# Functions
for config_file in ~/.local/bash/functions/*.functions.bash
do
	source $config_file
done

# Aliases
for config_file in ~/.local/bash/aliases/*.aliases.bash
do
	source $config_file
done

# Env Vars
for config_file in ~/.local/bash/env/*.env.bash
do
	source $config_file
done

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell
