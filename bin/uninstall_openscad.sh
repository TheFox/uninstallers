#!/usr/bin/env bash

set -x

which -s brew && brew uninstall openscad

sudo rm -rf /Applications/OpenSCAD.app

rm -rf ~/Library/'Saved Application State'/org.openscad.OpenSCAD.savedState
rm -f ~/Library/Preferences/org.openscad.OpenSCAD.plist
rm -rf ~/Library/HTTPStorages/org.openscad.OpenSCAD
