#!/usr/bin/env bash

which -s brew && brew uninstall vibetunnel

sudo rm -vrf /Applications/VibeTunnel.app

rm -rf ~/Library/HTTPStorages/sh.vibetunnel.vibetunnel
rm -f ~/Library/Preferences/sh.vibetunnel.vibetunnel.plist
