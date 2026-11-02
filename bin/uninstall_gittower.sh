#!/usr/bin/env bash

which curl &> /dev/null || { echo 'ERROR: curl not found in PATH'; exit 1; }
which mktemp &> /dev/null || { echo 'ERROR: mktemp not found in PATH'; exit 1; }

which -s brew && brew uninstall tower

rm -vrf ~/'Library/Application Support/com.fournova.Tower3'
rm -vrf ~/'Library/Application Support/com.fournova.Tower2'
rm -vrf ~/'Library/Application Support/com.fournova.Tower'

rm -vrf ~/'Library/Saved Application State/com.fournova.Tower3.savedState'
rm -vrf ~/'Library/Saved Application State/com.fournova.Tower2.savedState'
rm -vrf ~/'Library/Saved Application State/com.fournova.Tower.savedState'

rm -vrf ~/Library/Preferences/com.fournova.Tower3.plist
rm -vrf ~/Library/Preferences/com.fournova.Tower2.plist
rm -vrf ~/Library/Preferences/com.fournova.Tower.plist

rm -vrf ~/Library/Preferences/com.fournova.Tower.plist.lockfile

rm -vrf ~/Library/Caches/com.fournova.Tower3
rm -vrf ~/Library/Caches/com.fournova.Tower2
rm -vrf ~/Library/Caches/com.plausiblelabs.crashreporter.data/com.fournova.Tower3
rm -vrf ~/Library/Caches/com.plausiblelabs.crashreporter.data/com.fournova.Tower2
