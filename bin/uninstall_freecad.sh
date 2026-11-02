#!/usr/bin/env bash

set -x

which -s brew && brew uninstall freecad

sudo rm -rf /Applications/FreeCAD.app

rm -rf ~/Library/'Application Support'/FreeCAD
rm -rf ~/Library/Preferences/FreeCAD
rm -rf ~/Library/Preferences/freecad.plist
rm -rf ~/Library/Preferences/com.freecad.FreeCAD.plist
rm -rf ~/Library/Caches/FreeCAD
