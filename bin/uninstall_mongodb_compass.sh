#!/usr/bin/env bash

which -s brew && brew uninstall mongodb-compass

rm -f ~/Library/Preferences/com.mongodb.compass.plist
