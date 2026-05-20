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

which -s brew && brew uninstall docker

sudo rm -rf /Applications/Docker.app
sudo rm -rf /Library/LaunchDaemons/com.docker.socket.plist
sudo rm -rf /Library/PrivilegedHelperTools/com.docker.socket

rm -rf ~/Library/'Application Support'/'Docker Desktop'
rm -rf ~/Library/'Application Scripts'/group.com.docker
rm -rf ~/Library/'Group Containers'/group.com.docker
rm -rf ~/Library/Preferences/com.electron.dockerdesktop.plist
rm -rf ~/Library/Containers/com.docker.docker
rm -rf ~/Library/Caches/'Docker Desktop'
rm -rf ~/Library/Caches/docker-secrets-engine
