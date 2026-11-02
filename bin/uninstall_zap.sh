#!/usr/bin/env bash

which -s brew && brew uninstall zap

rm -vrf /Applications/ZAP.app
rm -vrf ~/Library/'Application Support'/ZAP
rm -f ~/Library/Preferences/org.zaproxy.zap.plist
rm -f ~/Library/Preferences/org.zaproxy.addon.plist
