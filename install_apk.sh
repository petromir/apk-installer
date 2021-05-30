#!/bin/bash

#title           :apk.sh
#description     :Script for installng apk packages on all connected devices
#author          :Petromir
#date            :20 May 2021

export PATH=/usr/local/bin

set -o nounset
set -o errexit
set -o pipefail

notification() {
	echo -e "[INFO] $1"
	osascript -e 'display notification "SUCCESS" with title "'"$1"'" sound name "Glass"'
}


FILE_PATHS=$(osascript << END
	tell application "Finder"
	  set finderSelList to selection as alias list
	end tell

	if not finderSelList = {} then
	 repeat with i in finderSelList
	    set contents of i to POSIX path of (contents of i)
	  end repeat
	  
	 set text item delimiters to linefeed
	 finderSelList as text
	end if
END
)

for file in "$FILE_PATHS"
do
	# Check package name
	PACKAGE_NAME=$(aapt2 dump packagename "$file")
	# 'adb install-multi-package test.apk demo.apk' could be used to install multiple application atomically 'com.myyearbook.m'
	echo "Start uninstalling $PACKAGE_NAME and installing $file on connected devices..."
	adb devices | tail -n +2 | cat | cut -sf 1 | xargs -t -I X bash -c "{ adb -s X uninstall \"$PACKAGE_NAME\"; adb -s X install -r -d \"$file\"; }"
	osascript -e 'display notification "SUCCESS" with title "Apk file has been installed on all connected devices!" sound name "Glass"'
done

