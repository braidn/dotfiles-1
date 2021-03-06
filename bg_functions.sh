#!/usr/bin/env bash
# bg_functions.sh


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


ox() {
	open  $(basename $(pwd)).xcodeproj
}

# Django function to runserver for a given interface OR if no parameters passed it
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
server() {
	local port="${1:-8000}"
	open "http://localhost:${port}/"
	# Set the default Content-Type to `text/plain` instead of `application/octet-stream`
	# And serve everything as UTF-8 (although not technically correct, this doesn’t break anything for binary files)
	python -c $'import SimpleHTTPServer;\nmap = SimpleHTTPServer.SimpleHTTPRequestHandler.extensions_map;\nmap[""] = "text/plain";\nfor key, value in map.items():\n\tmap[key] = value + ";charset=UTF-8";\nSimpleHTTPServer.test();' "$port"
}

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

# Force Purge $1 times
spurge() {
	echo "Purging ..."
	for i in  $(seq ${1}); do
	    echo "Purge ${i}/${1}"
	    purge
	done
}

_workon_project() { reply=($(ls -ld ~/Projects/* | while read i; do basename "$i" 2> /dev/null ; done | awk '$0 != "'Inactive'"')); }

workon_project() { cd "${HOME}/Projects/${1}/Project" }

compctl -K _workon_project workon_project
alias wp="workon_project"
new_project() {
	mkdir -p "${HOME}/Projects/$1/Project"
	mkdir -p "${HOME}/Projects/$1/Design"
	mkdir -p "${HOME}/Projects/$1/Docs"
	cd "${HOME}/Projects/$1"
}