#!/usr/bin/env bash

which -s brew && brew uninstall repobar

sudo rm -rf /Applications/RepoBar.app

rm -rf ~/Library/'Application Support'/com.steipete.repobar
rm -rf ~/Library/HTTPStorages/com.steipete.repobar
rm -rf ~/Library/HTTPStorages/com.steipete.repobar.binarycookies
rm -rf ~/Library/Preferences/com.steipete.repobar.plist
