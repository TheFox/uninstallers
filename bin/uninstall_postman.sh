#!/usr/bin/env bash

which -s brew && brew uninstall postman

sudo rm -rf /Applications/Postman.app

rm -rf ~/Library/'Application Support'/Postman
rm -rf ~/Library/Caches/com.postmanlabs.mac
rm -rf ~/Library/Caches/com.postmanlabs.mac.ShipIt
rm -rf ~/Library/HTTPStorages/com.postmanlabs.mac
rm -rf ~/Library/Logs/Postman
rm -rf ~/Library/Preferences/ByHost/com.postmanlabs.mac.ShipIt.*.plist
rm -rf ~/Library/Preferences/com.electron.postman.helper.plist
rm -rf ~/Library/Preferences/com.postmanlabs.mac.plist
