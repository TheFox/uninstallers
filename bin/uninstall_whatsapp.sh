#!/usr/bin/env bash
###
### uninstall_whatsapp.sh - Uninstaller
###
### Usage:
###   uninstall_whatsapp.sh [-h]
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

which -s brew && brew uninstall whatsapp

rm -vrf ~/'Library/Application Support/WhatsApp'
rm -vrf ~/'Library/Saved Application State/WhatsApp.savedState'

rm -vrf ~/Library/Preferences/WhatsApp.plist
rm -vrf ~/Library/Preferences/ByHost/WhatsApp.ShipIt.*.plist
rm -vrf ~/Library/Preferences/WhatsApp-Helper.plist
rm -vrf ~/Library/Logs/WhatsApp
rm -vrf ~/Library/Caches/WhatsApp.ShipIt
rm -vrf ~/Library/Caches/WhatsApp
