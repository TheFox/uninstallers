#!/usr/bin/env bash
###
### uninstall_zas_editor.sh - Uninstaller
###
### Usage:
###   uninstall_zas_editor.sh [-h]
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

sudo rm -vrf '/Applications/Zas Editor.app'

rm -vrf ~/'Library/Logs/Zas Editor'
rm -vrf ~/'Library/Application Support/Zas Editor'
rm -vrf ~/'Library/Saved Application State/com.zeditor.ZasEditor.Editor.savedState'
rm -vrf ~/Library/Preferences/com.zeditor.ZasEditor.Editor.plist
