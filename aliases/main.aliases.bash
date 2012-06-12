#!/bin/bash

# misc
######

alias	upt="uptime | uptime-sed.sh"
alias	open-connections="lsof -i | grep -E '(LISTEN|ESTABLISHED)'"
alias	p="python"
alias 	runserver='python manage.py runserver 0.0.0.0:8000'
alias   eject-disk="drutil tray eject"
alias   VLC="open -a '/Applications/VLC.app'"

alias   Killall='Kill'


# top
#####
alias	tu='top -o cpu'
alias 	tm='top -o rsize'
alias	tlu='top -l 1 -o cpu -n 10'
alias 	tlm='top -l 1 -o rsize -n 10'
alias	tlmm='top -l 1 -o rsize -n 10 | awk '\''{print $2 "\t\t" $11}'\'' | tail -11'



# ping
######
alias	ttl='ping -s 1 www.google.com'
alias	ping='ping -s 1'


# django
########
alias	runserver='python manage.py runserver 0.0.0.0:8000'
alias	runserver-vm='python manage.py runserver $(ipconfig getifaddr en1):8000'
# linux version should use piping
# The Ez way: /manage.py runserver $(ifconfig en1 | grep broadcast | cut -d: -f2 | awk '{print $2}'):8000
# The Hard way: pipe with sed
#
# alias	runserver-vm='python manage.py runserver $(ipconfig getifaddr en1):8000'

alias	syncdb='python manage.py syncdb'


# Sublime Text 2
#
# this alias was made because I use a custom python installed from homebrew,
# if you do not use this setup you should create a symbolic link from the path
# /Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl -> /usr/bin/
#
# export $SUBL="'/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl'"
# alias subl=$SUBL
alias st="subl -n"
alias s="st -n ."


alias ls='ls -Gp'
