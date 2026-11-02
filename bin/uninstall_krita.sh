#!/usr/bin/env bash

which -s brew && brew uninstall krita

rm -vrf ~/'Library/Application Support/krita.log'
rm -vrf ~/'Library/Application Support/krita'
rm -vrf ~/'Library/Application Support/krita-sysinfo.log'
rm -vrf ~/'Library/Saved Application State/org.krita.savedState'
rm -vrf ~/Library/Preferences/org.krita.plist
rm -vrf ~/Library/Preferences/kritadisplayrc
rm -vrf ~/Library/Preferences/kritarc
