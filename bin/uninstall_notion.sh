#!/usr/bin/env bash

which -s brew && brew uninstall notion

rm -rf ~/Library/'Application Support'/Notion
rm -rf ~/Library/'Saved Application State'/notion.id.savedState
rm -rf ~/Library/Preferences/notion.id.plist
rm -rf ~/Library/Logs/Notion
