#!/usr/bin/env bash

which -s brew && brew uninstall pgadmin4

rm -vrf ~/'Library/Application Support/pgadmin'
rm -vrf ~/'Library/Application Support/pgadmin 4'
rm -vrf ~/'Library/Saved Application State/org.pgadmin.pgadmin4.savedState'
rm -vrf ~/'Library/Preferences/org.pgadmin.pgadmin4.plist'
rm -vrf ~/'Library/Preferences/pgadmin'
rm -vrf ~/'Library/Caches/pgAdmin 4'
