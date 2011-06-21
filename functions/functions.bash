#!/bin/bash



# [#] Personal Functions
# web
function web {
	cd ~/Projects/Web/$*
}
function tm-restart { osascript -e 'tell app "TextMate" to reload bundles'; };
function list_internet_connections {
	lsof -nPi | cut -f 1 -d " "| uniq | tail -n +2	
}

# Hard Kill
function vaporize {
	QSTRING=$*
	PROC=`ps aux | grep ${QSTRING} | grep -v grep | awk '{print $2}'`
	if [ ! -n "$PROC" ]; then
		echo "hkill: Nothing found with the matching String: \"${QSTRING}\"."
	else
		NUMPROC=`echo $PROC  | awk '{print NF}'`
		echo "hkill: Found $NUMPROC PIDs with the matching String: \"${QSTRING}\"."
		sudo kill -9 $PROC
		echo "hkill: Task Complete."
	fi
}


convISOToUTF8() {
filename="$1"
newfile="new_${filename}"
	 # echo	"	"
	iconv -f WINDOWS-1252 -t UTF-8 ${filename} > ${newfile}
}

srt2utf8() {
	result=`ls *.srt`
	for i in $result
	do
	    echo "convertendo... $i"
	    iconv -f utf-8 -t iso-8859-1 $i > new.$i;
	done
}

function localize_project {
	find ../ -name *.m | xargs genstrings -o $1
}


# back up file with timestamp
# useful for administrators and configs
buf () {
    filename="$1"
    filetime="$(date +%Y%m%d_%H%M%S)"
    cp ${filename} ${filename}_${filetime}
}


function ips {
  ifconfig | grep "inet " | awk '{ print $2 }'
}

function down4me() {
  curl -s "http://www.downforeveryoneorjustme.com/$1" | sed '/just you/!d;s/<[^>]*>//g'
}

function myip {
  res=$(curl -s checkip.dyndns.org | grep -Eo '[0-9\.]+')
  echo "Your public IP is: ${bold_green} $res ${normal}"
}


# Make a directory and immediately 'cd' into it
function mkcd() {
  mkdir -p "$*"
  cd "$*"
}

function mypath() {
	echo $PATH | tr ':' '\n' | awk '{print "["NR"] "$0}'
}


function lsgrep(){
  ls | grep "$*"
}

# View man documentation in Preview
pman () {
   man -t "${1}" | open -f -a $PREVIEW
}


pcurl() {
  curl "${1}" | open -f -a $PREVIEW
}

pri() {
  ri -T "${1}" | open -f -a $PREVIEW
}


clearlogs() {
	sudo rm -rf /private/var/log/asl/*.asl
}

UpdateMalwareDefinitions() {
	sudo /usr/libexec/XProtectUpdater
	more /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/XProtect.meta.plist
}


thistory() {
	history | awk '{print $2}' | awk 'BEGIN {FS="|"} {print $1}'|sort|uniq -c | sort -n | tail | sort -nr
}