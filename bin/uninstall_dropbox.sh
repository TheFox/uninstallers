#!/usr/bin/env bash
###
### uninstall_dropbox.sh - Uninstaller
###
### Usage:
###   uninstall_dropbox.sh [-h]
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

which -s brew && brew uninstall dropbox

rm -vrf ~/'Library/Saved Application State/com.getdropbox.DropboxMetaInstaller.savedState'
rm -vrf ~/'Library/Application Scripts/com.dropbox.activityprovider'
rm -vrf ~/'Library/Application Scripts/com.dropbox.foldertagger'
rm -vrf ~/'Library/Application Support/Dropbox'

rm -vrf ~/Library/Preferences/com.dropbox.tungsten.helper.plist
rm -vrf ~/Library/Preferences/com.getdropbox.dropbox.plist
rm -vrf ~/Library/Preferences/com.dropbox.DropboxMonitor.plist
rm -vrf ~/Library/Preferences/com.dropbox.DropboxMacUpdate.plist

rm -vrf ~/Library/Logs/Dropbox_debug.log

rm -vrf ~/Library/Dropbox

rm -vrf ~/'Library/Application Scripts/com.getdropbox.dropbox.garcon'
rm -vrf ~/'Library/Group Containers/com.getdropbox.dropbox.garcon'
rm -vrf ~/Library/Containers/com.dropbox.foldertagger
rm -vrf ~/Library/Containers/com.getdropbox.dropbox.garcon
rm -vrf ~/Library/Containers/com.dropbox.activityprovider
rm -vrf ~/Library/Caches/com.plausiblelabs.crashreporter.data/com.dropbox.DropboxMacUpdate
rm -vrf ~/Library/Caches/com.getdropbox.dropbox
