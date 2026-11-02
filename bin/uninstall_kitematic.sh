#!/usr/bin/env bash

which -s brew && brew uninstall kitematic

rm -vrf ~/'Library/Saved Application State/com.electron.kitematic.savedState'
rm -vrf ~/Library/Preferences/com.electron.kitematic*.plist
