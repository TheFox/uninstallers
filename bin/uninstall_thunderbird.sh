#!/usr/bin/env bash

which -s brew && brew uninstall thunderbird

rm -vrf ~/'Library/Saved Application State/org.mozilla.thunderbird.savedState'
rm -vrf ~/'Library/Application Support'/CrashReporter/thunderbird*.plist
rm -vrf ~/Library/Preferences/org.mozilla.thunderbird.plist
rm -vrf ~/Library/Thunderbird
rm -vrf ~/Library/Caches/Thunderbird
