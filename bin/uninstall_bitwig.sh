#!/usr/bin/env bash
###
### uninstall_bitwig.sh - Uninstaller
###
### Usage:
###   uninstall_bitwig.sh [-h]
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

which -s brew && brew uninstall bitwig-studio

rm -vrf ~/'Library/Application Support/Bitwig'

rm -vrf ~/Library/Preferences/com.bitwig.studio.plist
rm -vrf ~/Library/Logs/Bitwig
rm -vrf ~/Library/Caches/Bitwig
rm -vrf ~/Library/Caches/com.bitwig.studio.plugin.host32
