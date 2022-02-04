#!/usr/bin/env bash
###
### uninstall_elasticsearch.sh - Uninstaller
###
### Usage:
###   uninstall_elasticsearch.sh [-h]
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

which brew && brew uninstall elasticsearch

sudo rm -vrf /usr/local/etc/elasticsearch
sudo rm -vrf /usr/local/var/log/elasticsearch
sudo rm -vrf /usr/local/var/lib/elasticsearch
sudo rm -vrf /usr/local/var/log/elasticsearch.log
sudo rm -vrf /usr/local/var/elasticsearch

rm -vrf ~/Library/Logs/Homebrew/elasticsearch
rm -vf ~/Library/LaunchAgents/homebrew.mxcl.elasticsearch.plist
