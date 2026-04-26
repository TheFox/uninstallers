#!/usr/bin/env bash
###
### uninstall.sh - Uninstaller
###
### Usage:
###   uninstall.sh [-h]
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

sudo rm -vrf '/Applications/Trello.app'

rm -vrf ~/'Library/Application Support'/CrashReporter/Trello_*.plist
rm -vrf ~/'Library/Saved Application State/com.atlassian.trello.savedState'
rm -vrf ~/'Library/Application Scripts/com.atlassian.trello'
rm -vrf ~/'Library/Application Scripts/com.atlassian.trello.loginhelper'
rm -vrf ~/'Library/Application Scripts/E398N47F4R.com.atlassian.trello'

sudo rm -vrf ~/'Library/Group Containers/E398N47F4R.com.atlassian.trello'
sudo rm -vrf ~/Library/Containers/com.atlassian.trello
sudo rm -vrf ~/Library/Containers/com.atlassian.trello.loginhelper
