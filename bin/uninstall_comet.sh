#!/usr/bin/env bash
###
### uninstall_comet.sh - Uninstaller
###
### Usage:
###   uninstall_comet.sh [-h]
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

which -s brew && brew uninstall comet

sudo rm -vrf /Applications/Comet.app

rm -vrf ~/'Library/Application Support/Comet'
rm -vf ~/Library/Preferences/ai.perplexity.comet.plist
rm -vrf ~//Library/Caches/MullvadBrowser
