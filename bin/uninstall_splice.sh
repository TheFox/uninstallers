#!/usr/bin/env bash

which -s brew && brew uninstall splice

rm -vrf ~/Library/Audio/Plug-Ins/Support/Splice
rm -vrf ~/'Library/Application Support/com.splice.Splice'
rm -vrf ~/'Library/Application Support/Splice'
rm -vrf ~/'Library/Saved Application State/com.splice.Splice.savedState'

rm -vrf ~/Library/Preferences/ByHost/com.splice.Splice.ShipIt.*.plist
rm -vrf ~/Library/Preferences/com.splice.Splice.plist
rm -vrf ~/Library/HTTPStorages/com.splice.Splice
rm -vrf ~/Library/HTTPStorages/com.splice.Splice.binarycookies
rm -vrf ~/Library/Logs/Splice
rm -vrf ~/Library/Caches/com.splice.Splice
rm -vrf ~/Library/Caches/com.splice.Splice.ShipIt
