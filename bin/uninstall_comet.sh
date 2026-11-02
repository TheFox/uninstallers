#!/usr/bin/env bash

which -s brew && brew uninstall comet

sudo rm -vrf /Applications/Comet.app

rm -vrf ~/'Library/Application Support/Comet'
rm -vf ~/Library/Preferences/ai.perplexity.comet.plist
rm -vrf ~//Library/Caches/MullvadBrowser
