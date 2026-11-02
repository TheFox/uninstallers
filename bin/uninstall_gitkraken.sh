#!/usr/bin/env bash

which -s brew && brew uninstall gitkraken

rm -vrf ~/'Library/Application Support/GitKraken'
rm -vrf ~/'Library/Saved Application State/com.axosoft.gitkraken.savedState'
rm -vf ~/Library/Preferences/com.axosoft.gitkraken.plist
rm -vrf ~/Library/Caches/com.axosoft.gitkraken.ShipIt
rm -vrf ~/Library/Caches/com.axosoft.gitkraken
