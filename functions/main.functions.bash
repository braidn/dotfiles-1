#!/bin/bash

# [#] Personal Functions
# web

tm-restart() { 
	osascript -e 'tell app "TextMate" to reload bundles'; 
}

convISOToUTF8() {
filename="$1"
newfile="new_${filename}"
	 # echo	"	"
	iconv -f WINDOWS-1252 -t UTF-8 ${filename} > ${newfile}
}

localize_project() {
	find ../ -name *.m | xargs genstrings -o $1
}


# Kill Like a Boss
Killall() {
	QSTRING=$*
	PROC=`ps aux | grep -i ${QSTRING} | grep -v grep | awk '{print $2}'`
	if [ ! -n "$PROC" ]; then
		echo "0 PID found with the matching String: \"${QSTRING}\"."
	else
		NUMPROC=`echo $PROC  | awk '{print NF}'`
		echo "Found $NUMPROC PIDs with the matching String: \"${QSTRING}\"."
		sudo kill -9 $PROC
		echo "All process Killed."
	fi
}

alias vaporize='Killall'


octal-helps() {
	echo "
	0 = no permissions whatsoever; this person cannot read, write, or execute the file
	1 = execute only
	2 = write only
	3 = write and execute (1+2)
	4 = read only
	5 = read and execute (4+1)
	6 = read and write (4+2)
	7 = read and write and execute (4+2+1)"
}


updateMalwareDefinitions() {
	sudo /usr/libexec/XProtectUpdater
	echo "Last Malware Definitions $(defaults read /System/Library/CoreServices/CoreTypes.bundle/Contents/Resources/XProtect.meta LastModification)"
}


thistory() {
	history | awk '{print $2}' | awk 'BEGIN {FS="|"} {print $1}'|sort|uniq -c | sort -n | tail | sort -nr
}

rules-of-the-internet() {
	echo "	
	RULES OF THE INTERNET
	---------------------
	O
	Rules of the Internet.
	1. Do not talk about /b/
	2. Do NOT talk about /b/
	3. We are Anonymous
	4. Anonymous is legion
	5. Anonymous never forgives
	6. Anonymous can be a horrible, senseless, uncaring monster
	7. Anonymous is still able to deliver
	B. There are no real rules about posting
	9. There are no real rules about moderation either - enjoy your ban
	10. If you enjoy any rival sites - DON'T
	11. All your carefully picked arguments can easily be ignored
	12. Anything you say can and will be used against you
	13. Anything you say can be turned into something else - fixed
	14. Do not argue with trolls - it means that they win
	15. The harder you try the harder you will fail
	16. If you fail in epic proportions, it may just become a winning failure
	17. Every win fails eventually
	13. Everything that can be labeled can be hated
	19. The more you hate it the stronger it gets
	20. Nothing is to be taken seriously
	21. Original content is original only for a few seconds before getting old
	22. Copypasta is made to ruin every last bit of originality
	23. Copypasta is made to ruin every last bit of originality
	24. Every repost is always a repost of a repost
	25. Relation to the original topic decreases with every single post
	26. Any topic can be easily turned into something totally unrelated
	27. Always question a person's sexual prefrences without any real reason
	28. Always question a person's gender - just in case it's really a man
	29. In the internet all girls are men and all kids are undercover FBI agents
	30. There are no girls on the internet
	31. TITS or GTFO - the choice is yours
	32. You must have pictures to prove your statements
	33. Lurk more - it's never enough
	34. There is porn of it, no exceptions
	35. If no porn is found at the moment, it will be made
	36. There will always be even more fucked up shit than what you just saw
	37. You can not divide by zero [just because the calculator says so]
	38. No real limits of any kind apply here - not even the sky
	39. CAPSLOCK IS CRUISE CONTROL FOR COOL
	40. EVEN WITH CRUISE CONTROL YOU STILL HAVE TO STEER
	41. Desu isn't funny. Seriously guys. It's worse than Chuck Norris jokes.
	42. Nothing is Sacred
	43. The more beautiful and pure a thing is - the more satisfying it is to corrupt it
	44. Even one positive comment about Japanese things can make you a weeaboo
	45. Uhen one sees a lion, one must get into the car.
	46. There is always furry porn of it.
	47. The pool is always closed."
}


git-version() {
	version=`git describe --abbrev=0 --tags`
	short_hash=`git rev-parse --short HEAD`
	echo "Version: $version ($short_hash)"
}