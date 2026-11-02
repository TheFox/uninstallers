#!/usr/bin/env bash

which -s brew && brew uninstall bruno

sudo rm -vrf /Applications/Bruno.app

rm -vrf ~/Library/HTTPStorages/com.usebruno.app
rm -vrf ~/Library/Logs/bruno
rm -vrf ~/Library/Preferences/ByHost/com.usebruno.app.ShipIt.*.plist
rm -vrf ~/Library/Preferences/com.usebruno.app.plist
