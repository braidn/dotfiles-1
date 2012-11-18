#!/usr/bin/env bash
# itunes.functions.bash
# from the user: jeberle-mac
# src: http://hints.macworld.com/article.php?story=20011108211802830

itunes() {
    if [ -z "$1" -o "$1" = '-h' -o "$1" = '--help' ]; then
        itunes-hints
    else
        osascript -e 'tell app "iTunes" to '"$*"
    fi
}

vol() {
    local vol=$(itunes get sound volume)
    if [[ -z "$1" ]]; then
        echo $vol
    elif [[ "$1" = up ]]; then
        itunes set sound volume to $((vol+10))
    elif [[ "$1" = down ]]; then
        itunes set sound volume to $((vol-10))
    elif [[ "$1" =~ ^[0-9]{1,3}$ ]]; then
        itunes set sound volume to "$1"
    else
        echo vol '[up | down | <number>]'
    fi
}

itunes-hints() {
  cat - <<EOS
Usage:
  itunes play
  itunes stop
  itunes playpause
  itunes set mute to 1
  itunes set mute to 0
  itunes quit

  itunes next track
  itunes previous track
  itunes play playlist \"name\"
  itunes play track 3 of current playlist

  itunes get player state
  itunes get player position

  itunes get artist of current track
  itunes get name of current track

  itunes get current stream title
  itunes get current stream URL

  itunes get name of every playlist
  itunes get name of every track in current playlist
  itunes get name of track 3 of current playlist

  vol up       - Increase volume by 10%
  vol down     - Decrease volume by 10%
  vol <0-100>  - Set volume from 0 to 100%
EOS
}
