#!/usr/bin/env bash
###
### uninstall_sourcetrail.sh - Uninstaller
###
### Usage:
###   uninstall_sourcetrail.sh [-h]
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

which -s brew && brew uninstall sourcetrail

rm -vrf ~/'Library/Application Support/Sourcetrail'
rm -vrf ~/'Library/Saved Application State/com.sourcetrail.savedState'
rm -vf ~/Library/Preferences/com.sourcetrail.plist
