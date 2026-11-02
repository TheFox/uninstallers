#!/usr/bin/env bash

which -s brew && brew uninstall antigravity

sudo rm -vrf /Applications/Antigravity.app

rm -vrf ~/'Library/Application Support/Antigravity'
rm -vf ~/Library/Preferences/com.google.antigravity.plist
rm -vrf ~/Library/Caches/com.google.antigravity
rm -vrf ~/Library/Caches/com.google.antigravity.ShipIt
rm -vrf ~/Library/HTTPStorages/com.google.antigravity
