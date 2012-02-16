#!/bin/bash

# alias 	python="/usr/local/bin/python2.7"
alias	upt="uptime | uptime-sed.sh"
alias	open-connections="lsof -i | grep -E '(LISTEN|ESTABLISHED)'"
alias	p="python"
alias 	runserver='python manage.py runserver 0.0.0.0:8000'
alias   eject-disk="drutil tray eject"
alias VLC="open -a '/Applications/VLC.app'"



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



# Xcode
#######
alias	xcode-select='xcode-select --print-path'

# django
########
alias	runserver='python manage.py runserver 0.0.0.0:8000'
alias	syncdb='python manage.py syncdb'



# alias python='/usr/local/Cellar/python/2.7.2/bin/python2.7'

alias mkve='mkvirtualenv --no-site-packages --python=/usr/local/bin/python'
