#!/usr/bin/env bash

which -s brew && brew uninstall codexbar

sudo rm -vrf /Applications/CodexBar.app

rm -rf ~/Library/'Application Scripts'/com.steipete.codexbar.widget
rm -rf ~/Library/'Application Scripts'/group.com.steipete.codexbar
rm -rf ~/Library/'Application Support'/CodexBar
rm -rf ~/Library/'Application Support'/com.steipete.codexbar
rm -rf ~/Library/'Application Scripts'/Y5PE65HELJ.com.steipete.codexbar
rm -rf ~/Library/'Group Containers'/group.com.steipete.codexbar
rm -rf ~/Library/Containers/com.steipete.codexbar.widget
rm -rf ~/Library/HTTPStorages/com.steipete.codexbar
rm -rf ~/Library/HTTPStorages/com.steipete.codexbar.binarycookies
rm -rf ~/Library/Preferences/com.steipete.codexbar.plist
rm -rf ~/Library/WebKit/com.steipete.codexbar
rm -rf ~/Library/Caches/com.steipete.codexbar
rm -rf ~/Library/Caches/CodexBar
rm -rf ~/.codexbar
rm -rf ~/.config/codexbar
