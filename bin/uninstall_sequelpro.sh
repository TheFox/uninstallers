#!/usr/bin/env bash
###
### uninstall_sequelpro.sh - Uninstaller
###
### Usage:
###   uninstall_sequelpro.sh [-h]
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

which brew && brew uninstall sequel-pro

rm -vrf ~/'Library/Application Support/Sequel Pro'
rm -vrf ~/'Library/Saved Application State/com.sequelpro.SequelPro.savedState'
rm -vrf ~/Library/Preferences/com.sequelpro.SequelPro.plist
rm -vrf ~/Library/Caches/com.sequelpro.SequelPro
