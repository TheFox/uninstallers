#!/usr/bin/env bash

which -s brew && brew uninstall windsurf

rm -rf /Applications/Windsurf.app
rm -rf ~/'Library/Application Support/Windsurf'

rm -rf ~/Library/Caches/com.exafunction.windsurf
rm -rf ~/Library/Caches/com.exafunction.windsurf.ShipIt
rm -rf ~/Library/Preferences/com.exafunction.windsurf.plist
