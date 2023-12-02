#!/usr/bin/env bash
###
### uninstall_spotify.sh - Uninstaller
###
### Usage:
###   uninstall_spotify.sh [-h]
###
### Options:
###   -h                  Show this message.

NO_COLOR='\033[0m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'

help() {
    head -50 "$0" | grep '^###' | sed 's/^###//; s/^ //'
}

if [[ "$1" == -h ]]; then
    help
    exit 1
fi

which -s brew && brew uninstall spotify

rm -vrf ~/'Library/Saved Application State/com.spotify.client.savedState'
rm -vrf ~/'Library/Application Support/Spotify'
rm -vrf ~/'Library/Application Support/CrashReporter'/Spotify_*.plist

rm -vrf ~/Library/Preferences/com.spotify.client.plist
rm -vrf ~/Library/Preferences/com.spotify.client.helper.plist
rm -vrf ~/Library/Caches/com.spotify.client.helper
rm -vrf ~/Library/Caches/com.spotify.client
