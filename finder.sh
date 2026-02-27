#!/usr/bin/env bash

name=$1
find /Applications /Library ~/Library -iname "*${name}*" 2> /dev/null \
    | grep -v /Applications/Xcode.app \
    | grep -v /Library/Developer/Xcode \
    | grep -v /Library/Developer/CommandLineTools/ \
    | grep -v '/Visual Studio Code.app/' \
    | grep -v '/Arduino IDE.app/' \
    | grep -v /Library/Arduino15/ \
    | grep -v /Applications/Cursor.app/ \
    | grep -v /Applications/PhpStorm.app/ \
    | grep -v /Applications/Pages.app/ \
    | grep -v '/Applications/Microsoft ' \
    | grep -v /Applications/LibreOffice.app \
    | grep -v /Applications/Vivaldi.app/ \
    | grep -v /Applications/VLC.app/ \
    | grep -v /Applications/Antigravity.app/ \
    | grep -v /Applications/Kaleidoscope.app/ \
    | grep -v /Applications/GIMP.app/ \
    | grep -v /JetBrains/PhpStorm2 \
    | grep -v /Library/DataScienceStudio/ \
    | grep -v .app/Contents/Resources/ \
    | grep -v .app/Contents/PlugIns/ \
    | grep -v .app/Contents/Frameworks/ \
    | grep -v /Firefox/Profiles/ \
    | grep -v /Google/Chrome/Default/Local \
    | grep -v /Library/Caches/Homebrew/ \
    | grep -v /plugins/ \
    | grep -v '.hpp$' \
    | grep -v '.js$' \
    | grep -v '.py$' \
    | grep -v '.pyi$' \
    | grep -v '.pyc$' \
    | grep -v '.ttf$' \
    | grep -v '.jar$' \
    | grep -v '/aarch64$' \
    | sort > ./finder_${name}.txt
