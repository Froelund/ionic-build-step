#!/bin/bash

set -e

command_exists () {
	command -v "$1" >/dev/null 2>&1 ;
}

ensure_command () {
	if command_exists $1 ; then
		echo " [!] Already installed: $1"
	else
		echo " -> installing $1 with NPM"
		npm -g install $1
	fi
}

STARTTIME=$(date +%s)

ensure_command cordova
ensure_command ionic

ENDTIME=$(date +%s)
echo
echo " (i) Setup took $(($ENDTIME - $STARTTIME)) seconds to complete"
echo