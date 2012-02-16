#!/bin/bash

# Functions
for config_file in ~/.local/bash/functions/*.bash do
	  source $config_file
done

# Aliases
for config_file in ~/.local/bash/aliases/*.bash do
	  source $config_file
done

# Env Vars
for config_file in ~/.local/bash/env/*.bash do
	  source $config_file
done