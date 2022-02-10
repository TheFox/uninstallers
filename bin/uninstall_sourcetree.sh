#!/usr/bin/env bash
###
### uninstall_sourcetree.sh - Uninstaller
###
### Usage:
###   uninstall_sourcetree.sh [-h]
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

which -s brew && brew uninstall sourcetree

rm -vrf ~/'Library/Application Support/CrashReporter'/Sourcetree_*.plist
rm -vrf ~/'Library/Application Support/SourceTree'
rm -vrf ~/'Library/Saved Application State/com.torusknot.SourceTreeNotMAS.savedState'
rm -vrf ~/Library/WebKit/com.torusknot.SourceTreeNotMAS
rm -vrf ~/Library/Preferences/com.torusknot.SourceTreeNotMAS.plist
rm -vrf ~/Library/Logs/Sourcetree
