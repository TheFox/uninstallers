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

set -x

which -s brew && brew uninstall docker

sudo rm -rf /Applications/Docker.app

rm -r ~/Library/'Application Support'/'Docker Desktop'
rm -r ~/Library/'Application Scripts'/group.com.docker
rm -r ~/Library/'Group Containers'/group.com.docker
rm -r ~/Library/Preferences/com.electron.dockerdesktop.plist
rm -r ~/Library/Containers/com.docker.docker
rm -r ~/Library/Caches/'Docker Desktop'