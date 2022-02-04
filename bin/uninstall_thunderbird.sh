#!/usr/bin/env bash
###
### uninstall_thunderbird.sh - Uninstaller
###
### Usage:
###   uninstall_thunderbird.sh [-h]
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

which brew && brew uninstall thunderbird

rm -vrf ~/'Library/Saved Application State/org.mozilla.thunderbird.savedState'
rm -vrf ~/'Library/Application Support'/CrashReporter/thunderbird*.plist
rm -vrf ~/Library/Preferences/org.mozilla.thunderbird.plist
rm -vrf ~/Library/Thunderbird
rm -vrf ~/Library/Caches/Thunderbird
