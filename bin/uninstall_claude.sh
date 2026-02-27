#!/usr/bin/env bash
###
### uninstall_claude.sh - Uninstaller
###
### Usage:
###   uninstall_claude.sh [-h]
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

which -s brew && brew uninstall claude

rm -rf ~/'Library/Application Support/Claude'

rm -rf ~/Library/Caches/com.anthropic.claudefordesktop
rm -rf ~/Library/Caches/com.anthropic.claudefordesktop.ShipIt
rm -rf ~/Library/HTTPStorages/com.anthropic.claudefordesktop
rm -rf ~/Library/Logs/Claude

rm -f ~/Library/Preferences/ByHost/com.anthropic.claudefordesktop.ShipIt.*.plist
rm -f ~/Library/Preferences/com.anthropic.claudefordesktop.plist
