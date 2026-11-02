#!/usr/bin/env bash

which -s brew && brew uninstall sourcetrail

rm -vrf ~/'Library/Application Support/Sourcetrail'
rm -vrf ~/'Library/Saved Application State/com.sourcetrail.savedState'
rm -vf ~/Library/Preferences/com.sourcetrail.plist
