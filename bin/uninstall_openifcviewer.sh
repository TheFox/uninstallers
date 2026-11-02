#!/usr/bin/env bash

set -x

sudo rm -rf /Applications/OpenIFCViewer.app

rm -rf ~/Library/'Saved Application State'/OpenIFCViewer.savedState
rm -f ~/Library/Preferences/com.open-design-alliance.OpenIFCViewer.plist
rm -f ~/Library/Preferences/OpenIFCViewer.plist
