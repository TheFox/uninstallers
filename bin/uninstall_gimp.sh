#!/usr/bin/env bash

which -s brew && brew uninstall gimp

rm -rf ~/Library/'Application Support'/GIMP

rm -rf ~/Library/'Saved Application State'/org.gimp.gimp-2.10:.savedState
rm -rf ~/Library/'Saved Application State'/org.gimp.gimp-2.10.savedState
rm -rf ~/Library/'Saved Application State'/org.gnome.gimp.savedState

rm -f ~/Library/Preferences/gimp.plist
rm -f ~/Library/Preferences/org.gimp.gimp.plist
rm -f ~/Library/Preferences/org.gimp.gimp-2.10:.plist
rm -f ~/Library/Preferences/org.gimp.gimp-2.10.plist
rm -f ~/Library/Preferences/org.gimp.gimp-3.0.plist
rm -f ~/Library/Preferences/org.gnome.gimp.plist

rm -rf ~/Library/HTTPStorages/org.gimp.gimp-2.10
rm -rf ~/Library/HTTPStorages/org.gimp.gimp-3.0

rm -rf ~/Library/Caches/org.gimp.gimp-2.10
rm -rf ~/Library/Caches/org.gimp.gimp-3.0
