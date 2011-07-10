#!/bin/bash

alias	.="pwd"
alias	..="cd .."
alias	...="cd ../.."
alias	-- -="cd -"
alias	~="cd ~"
alias 	mv="mv -i"
alias 	cp="cp -i"
alias 	ls="ls -G"
alias 	la="ls -Ga" # list all, includes dot files
alias 	ll="ls -Gl" # long list, excludes dot files
alias 	lla="ls -Gla" # long list all, includes dot files
alias 	h='history' # Shell History
alias 	tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'" # Tree
alias	md='mkdir -p' # Directory
alias	rd=rmdir
alias 	c="clear"
alias 	k="clear"
alias 	edit=${EDITOR}
alias 	_="sudo"
alias 	tm-bundles="cd /Library/Application\ Support/TextMate/Bundles/"
alias 	tm-themes="cd /Library/Application\ Support/TextMate/Themes/"
alias 	tu="top -o cpu" #cpu
alias 	tm="top -o vsize" #memory
alias	upt="uptime | uptime-sed.sh"
alias   eject-disk="drutil tray eject"