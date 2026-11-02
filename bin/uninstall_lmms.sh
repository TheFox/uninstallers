#!/usr/bin/env bash

which -s brew && brew uninstall lmms

rm -vrf ~/'Library/Saved Application State/io.lmms.savedState'
