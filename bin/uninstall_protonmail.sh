#!/usr/bin/env bash
###
### uninstall_protonmail.sh - Uninstaller
###
### Usage:
###   uninstall_protonmail.sh [-h]
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

which -s brew && brew uninstall protonmail-bridge

sudo rm -vrf '/Applications/ProtonMail Bridge.app'
sudo rm -vrf '/Applications/ProtonMail Import-Export app.app'

rm -vrf ~/'Library/Application Support/protonmail'
rm -vrf ~/'Library/Preferences/com.protonmail.import-export.ProtonMail Import-Export app.plist'
rm -vrf ~/'Library/Caches/ProtonMail Import-Export app'
rm -vrf ~/'Library/Caches/ProtonMail Bridge'
rm -vrf ~/Library/Preferences/com.protonmail.import-export.plist
rm -vrf ~/Library/Caches/protonmail
