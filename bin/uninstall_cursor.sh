#!/usr/bin/env bash

which -s brew && brew uninstall cursor

sudo rm -vrf /Applications/Cursor.app

rm -vrf ~/'Library/Application Support/Cursor'
