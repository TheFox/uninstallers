#!/usr/bin/env bash

which -s brew && brew uninstall mysqlworkbench

rm -rf ~/Library/'Saved Application State'/com.oracle.workbench.MySQLWorkbench.savedState
rm -rf ~/Library/Preferences/com.oracle.workbench.MySQLWorkbench.plist
