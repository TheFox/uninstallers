#!/usr/bin/env bash

which -s brew && brew uninstall spotify

rm -vrf ~/'Library/Saved Application State/com.spotify.client.savedState'
rm -vrf ~/'Library/Application Support/Spotify'
rm -vrf ~/'Library/Application Support/CrashReporter'/Spotify_*.plist

rm -vrf ~/Library/Preferences/com.spotify.client.plist
rm -vrf ~/Library/Preferences/com.spotify.client.helper.plist
rm -vrf ~/Library/Caches/com.spotify.client.helper
rm -vrf ~/Library/Caches/com.spotify.client
