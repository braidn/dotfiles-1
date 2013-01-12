#!/bin/bash
ss() {
	__project=$(find . -iname "*.sublime-project" -d 1)
	if [ -n "$__project" ]; then
		echo "Opening ${__project}"
		o $__project
	else
		echo "s $(dirname $0)"
		s $(dirname $0)
	fi
	unset __project
}
pman() {
	man -t "$@" | ps2pdf - - | open -f -a Preview
}

# Django function to runserver for a given interface OR if no parameters passed it
# will use en1

runserver() {
	# localip is a alias to a miniscript wrote in python to solve
	# the localip which have access to the internet

	internalIP=$(localip)
	open "http://${internalIP}:8000"
	python manage.py runserver ${internalIP}:8000
}

runserver_plus() {
	# localip is a alias to a miniscript wrote in python to solve
	# the localip which have access to the internet

	internalIP=$(localip)
	open "http://${internalIP}:8000"
	python manage.py runserver_plus ${internalIP}:8000
}

# run simple server
function server() {
	local port="${1:-8000}"
	open "http://localhost:${port}/"
	# Set the default Content-Type to `text/plain` instead of `application/octet-stream`
	# And serve everything as UTF-8 (although not technically correct, this doesn’t break anything for binary files)
	python -c $'import SimpleHTTPServer;\nmap = SimpleHTTPServer.SimpleHTTPRequestHandler.extensions_map;\nmap[""] = "text/plain";\nfor key, value in map.items():\n\tmap[key] = value + ";charset=UTF-8";\nSimpleHTTPServer.test();' "$port"
}

# [#] Personal Functions
# web


iso_to_utf8() {
	file_input=$1
	file_output="utf8_${file_input}"
	original_charset=$(file -I ${file_input} | awk '{print substr($3,9,length($3))}')
	iconv -f ${original_charset} -t UTF-8 ${file_input} > ${file_output}
	unset file_output file_input original_charset
}

git-version() {
	version=`git describe --abbrev=0 --tags`
	short_hash=`git rev-parse --short HEAD`
	echo "Version: $version ($short_hash)"
}


k() { for i in $*; do pkill -9 -fi $i; done }





# The functions bellow came from this repo
# https://github.com/NapoleonWils0n/bashfinder/blob/master/.bash_profile



#|------------------------------------------------------------------------------
#|  bashfinder - control the finder with the terminal
#|------------------------------------------------------------------------------

ee() {
 osascript -e 'set cwd to do shell script "pwd"'\
 -e 'tell application "Finder"'\
 -e "if (${1-1} <= (count Finder windows)) then"\
 -e "set the target of window ${1-1} to (POSIX file cwd) as string"\
 -e 'else' -e "open (POSIX file cwd) as string"\
 -e 'end if' -e 'end tell';\
}
# Check if a directory is passed to cd, eg: $ cd Desktop
# if no directory is specified typing cd changes dir to ~

cdee() { if [ -z "$1" ]
then
cd ~; ee > /dev/null;
else
cd "$1"; ee > /dev/null;
fi
}

alias cd='cdee'

#|------------------------------------------------------------------------------
#|  List view
#|------------------------------------------------------------------------------

# typing list at the prompt will change the current Finder window to list view

list() { 
 osascript -e 'set cwd to do shell script "pwd"'\
 -e 'tell application "Finder"'\
 -e "if (${1-1} <= (count Finder windows)) then"\
 -e "set the target of window ${1-1} to (POSIX file cwd) as string"\
 -e "set the current view of the front Finder window to list view"\
 -e 'else' -e "open (POSIX file cwd) as string"\
 -e "set the current view of the front Finder window to list view"\
 -e 'end if' -e 'end tell';\
}

#|------------------------------------------------------------------------------
#|  Icon view
#|------------------------------------------------------------------------------

# typing icon at the prompt will change the current Finder window to icon view

icon() { 
 osascript -e 'set cwd to do shell script "pwd"'\
 -e 'tell application "Finder"'\
 -e "if (${1-1} <= (count Finder windows)) then"\
 -e "set the target of window ${1-1} to (POSIX file cwd) as string"\
 -e "set the current view of the front Finder window to icon view"\
 -e 'else' -e "open (POSIX file cwd) as string"\
 -e "set the current view of the front Finder window to icon view"\
 -e 'end if' -e 'end tell';\
}

#|------------------------------------------------------------------------------
#|  Column view
#|------------------------------------------------------------------------------

# typing column at the prompt will change the current Finder window to column view

column() { 
 osascript -e 'set cwd to do shell script "pwd"'\
 -e 'tell application "Finder"'\
 -e "if (${1-1} <= (count Finder windows)) then"\
 -e "set the target of window ${1-1} to (POSIX file cwd) as string"\
 -e "set the current view of the front Finder window to column view"\
 -e 'else' -e "open (POSIX file cwd) as string"\
 -e "set the current view of the front Finder window to column view"\
 -e 'end if' -e 'end tell';\
}

#|------------------------------------------------------------------------------
#|  Change terminal directory to current directory open in the Finder
#|------------------------------------------------------------------------------

# cdff will change the terminal directory to current directory open in the Finder

ff() { osascript -e 'tell application "Finder"'\
 -e "if (${1-1} <= (count Finder windows)) then"\
 -e "get POSIX path of (target of window ${1-1} as alias)"\
 -e 'else' -e 'get POSIX path of (desktop as alias)'\
 -e 'end if' -e 'end tell'; }

cdff() { cd "`ff $@`"; }
