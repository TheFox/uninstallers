#!/usr/bin/env bash

which -s brew && brew uninstall sourcetree

rm -vrf ~/'Library/Application Support/CrashReporter'/Sourcetree_*.plist
rm -vrf ~/'Library/Application Support/SourceTree'
rm -vrf ~/'Library/Saved Application State/com.torusknot.SourceTreeNotMAS.savedState'
rm -vrf ~/Library/WebKit/com.torusknot.SourceTreeNotMAS
rm -vrf ~/Library/Preferences/com.torusknot.SourceTreeNotMAS.plist
rm -vrf ~/Library/Logs/Sourcetree
