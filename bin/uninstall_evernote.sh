#!/usr/bin/env bash
###
### uninstall_evernote.sh - Uninstaller
###
### Usage:
###   uninstall_evernote.sh [-h]
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

which -s brew && brew uninstall evernote

rm -vrf ~/'Library/Application Support/Evernote'
rm -vrf ~/'Library/Application Support/Caches/evernote-client-updater'
rm -vrf ~/'Library/Application Scripts/com.evernote.Evernote.shareext'
rm -vrf ~/'Library/Saved Application State/com.evernote.Evernote.savedState'

rm -vf ~/Library/Preferences/ByHost/com.evernote.Evernote.ShipIt.6E181335-30FA-50C3-9732-550B98346073.plist
rm -vf ~/Library/Preferences/com.evernote.Evernote.plist
rm -vrf ~/Library/Containers/com.evernote.Evernote.shareext
rm -vrf ~/Library/Caches/com.evernote.Evernote.ShipIt
rm -vrf ~/Library/Caches/com.evernote.Evernote
