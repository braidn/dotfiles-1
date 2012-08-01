#!/bin/bash



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
	39. CAPSLOCK IS CONTROLUISE CONTROL FOR COOL
	40. EVEN WITH CRUISE CONTROL YOU STILL HAVE TO STEER
	41. Desu isn't funny. Seriously guys. It's worse than Chuck Norris jokes.
	42. Nothing is Sacred
	43. The more beautiful and pure a thing is - the more satisfying it is to corrupt it
	44. Even one positive comment about Japanese things can make you a weeaboo
	45. Uhen one sees a lion, one must get into the car.
	46. There is always furry porn of it.
	47. The pool is always closed."
}

accent-help() {
	echo 'ä ë ï ö ü are made by typing option u then the vowel'
	echo 'â ê î ô û are made by typing option i then the vowel'
	echo 'á é í ó ú are made by typing option e then the vowel'
	echo 'note opt 6 then the vowel when using the extended keyboard'
	echo 'à è ì ò ù are made by typing option ` (above the tab key) then the vowel'
	echo 'ā option a then the vowel only with the extended keyboard..'
}


git-version() {
	version=`git describe --abbrev=0 --tags`
	short_hash=`git rev-parse --short HEAD`
	echo "Version: $version ($short_hash)"
}
