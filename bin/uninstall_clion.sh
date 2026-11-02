#!/usr/bin/env bash

which -s brew && brew uninstall clion

rm -vrf ~/'Library/Application Support/CLion'
rm -vrf ~/'Library/Saved Application State/com.jetbrains.CLion.savedState'
rm -vrf ~/Library/Preferences/com.jetbrains.CLion.plist
rm -vrf ~/Library/Preferences/CLion20*
rm -vrf ~/Library/Preferences/jetbrains.clion.*.plist
rm -vrf ~/Library/Logs/CLion20*
rm -vrf ~/Library/Caches/CLion20*
