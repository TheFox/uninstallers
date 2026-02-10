#!/usr/bin/env bash

name=$1
find /Applications /Library ~/Library -iname "*${name}*" 2> /dev/null \
    | grep -v /Applications/Xcode.app \
    | grep -v /Library/Developer/CommandLineTools/ \
    | grep -v /Firefox/Profiles/ \
    | grep -v '/Visual Studio Code.app/' \
    | grep -v '/Arduino IDE.app/' \
    | grep -v /Applications/Cursor.app/ \
    | grep -v /Applications/PhpStorm.app/ \
    | grep -v /Applications/Pages.app/ \
     > ./finder_${name}.txt
