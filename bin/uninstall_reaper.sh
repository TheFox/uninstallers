#!/usr/bin/env bash

which -s brew && brew uninstall reaper

rm -vrf ~/'Library/Application Support/REAPER'
rm -vrf ~/'Library/Saved Application State/com.cockos.reaper.savedState'
rm -vrf ~/'Library/Saved Application State/com.cockos.ReaMote.savedState'
rm -vrf ~/Library/Preferences/com.cockos.reaper.plist
