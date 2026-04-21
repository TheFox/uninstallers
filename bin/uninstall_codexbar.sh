#!/usr/bin/env bash
###
### uninstall_codexbar.sh - Uninstaller
###
### Usage:
###   uninstall_codexbar.sh [-h]
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

which -s brew && brew uninstall codexbar

sudo rm -vrf /Applications/CodexBar.app

rm -rf /Library/'Application Scripts'/com.steipete.codexbar.widget
rm -rf /Library/'Application Scripts'/group.com.steipete.codexbar
rm -rf /Library/'Application Support'/CodexBar
rm -rf /Library/Containers/com.steipete.codexbar.widget
rm -rf /Library/'Group Containers'/group.com.steipete.codexbar
rm -rf /Library/HTTPStorages/com.steipete.codexbar
rm -rf /Library/Preferences/com.steipete.codexbar.plist
rm -rf /Library/WebKit/com.steipete.codexbar
