#!/usr/bin/env bash

which -s brew && brew uninstall spitfire-audio

sudo rm -vrf '/Library/PrivilegedHelperTools/com.spitfireaudio.LibraryManagerHelper'
sudo rm -vrf '/Library/Logs/Spitfire Audio'
sudo rm -vrf '/Library/LaunchDaemons/com.spitfireaudio.LibraryManagerHelper.plist'

rm -vrf ~/'Library/Application Support/CLion'
rm -vrf ~/'Library/Saved Application State/com.spitfireaudio.spitfireaudio.savedState'

rm -vrf ~/Library/Logs/com.spitfireaudio
rm -vrf ~/Library/Preferences/com.spitfireaudio.spitfireaudio.plist
rm -vrf ~/Library/Caches/com.spitfireaudio.spitfireaudio
