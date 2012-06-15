#!/bin/bash

#
# some of these aliases are ripped of from the url https://github.com/mathiasbynens/dotfiles/blob/master/.aliases
##

#
# Shortcuts
##
alias m="mate ."      # textmate
alias o="open"
alias oo="open ."
alias st="subl -n"    # sublime text 2
alias s="st"
alias ss="s -n ."
alias ls='ls -Gp'
alias lsd='ls -l | grep "^d"'   # List only directories
alias open-connections="lsof -i | grep -E '(LISTEN|ESTABLISHED)'"
alias p="python"
alias eject-disk="drutil tray eject"
alias nano=$EDITOR
alias masupdate="open macappstore://showUpdatesPage" # opens the mac app store direct into the update section
#
# Top
##
alias tu='top -o cpu'
alias tm='top -o rsize'
alias tlu='top -l 1 -o cpu -n 10'
alias tlm='top -l 1 -o rsize -n 10'
alias tlmm='top -l 1 -o rsize -n 10 | awk '\''{print $2 "\t\t" $11}'\'' | tail -11'

alias pi='ping -s 1'            # "light ping" sends a ping with 1 bit to not overload the network
alias ttl='pi www.google.com'     # my time to live

#
# django syncdb command
##
alias syncdb='python manage.py syncdb'

#
# Enable aliases to be sudo’ed
##
alias sudo='sudo '

#
# Get OS X Software Updates, update Homebrew itself, and upgrade installed Homebrew packages
# /usr/libexec/XProtectUpdater forces update for the malware defintions list by apple
##
alias update='sudo softwareupdate -i -a; /usr/libexec/XProtectUpdater; brew update; brew upgrade'

#
# IP addresses
##
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="python -c \"import socket;s=socket.socket(socket.AF_INET, socket.SOCK_DGRAM);s.connect(('8.8.8.8',80));print(s.getsockname()[0]);s.close()\""
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"

#
# Enhanced WHOIS lookups
##
alias whois="whois -h whois-servers.net"

#
# Flush Directory Service cache
##
alias flush="dscacheutil -flushcache"

#
# View HTTP traffic
##
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

#
# File size
##
alias fs="stat -f \"%z bytes\""

#
# ROT13-encode text. Works for decoding, too! ;)
##
alias rot13='tr a-zA-Z n-za-mN-ZA-M'

#
# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
##
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

#
# Show/hide hidden files in Finder
##
alias show="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"

#
# Hide/show all desktop icons (useful when presenting)
##
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

#
# URL-encode strings
##
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

#
# Disable Spotlight
##
alias spotoff="sudo mdutil -a -i off"

#
# Enable Spotlight
##
alias spoton="sudo mdutil -a -i on"

#
# One of @janmoesen’s ProTip™s
##
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
    alias "$method"="lwp-request -m '$method'"
done

#
# Stuff I never really use but cannot delete either because of http://xkcd.com/530/
##
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume 7'"
alias hax="growlnotify -a 'Activity Monitor' 'System error' -m 'WTF R U DOIN'"
