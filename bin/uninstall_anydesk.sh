#!/usr/bin/env bash

which -s brew && brew uninstall anydesk

rm -rf ~/Library/'Saved Application State'/com.philandro.anydesk.savedState
rm -rf ~/Library/Preferences/com.philandro.anydesk.plist
