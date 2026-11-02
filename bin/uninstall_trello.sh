#!/usr/bin/env bash

sudo rm -vrf '/Applications/Trello.app'

rm -vrf ~/'Library/Application Support'/CrashReporter/Trello_*.plist
rm -vrf ~/'Library/Saved Application State/com.atlassian.trello.savedState'
rm -vrf ~/'Library/Application Scripts/com.atlassian.trello'
rm -vrf ~/'Library/Application Scripts/com.atlassian.trello.loginhelper'
rm -vrf ~/'Library/Application Scripts/E398N47F4R.com.atlassian.trello'

sudo rm -vrf ~/'Library/Group Containers/E398N47F4R.com.atlassian.trello'
sudo rm -vrf ~/Library/Containers/com.atlassian.trello
sudo rm -vrf ~/Library/Containers/com.atlassian.trello.loginhelper
