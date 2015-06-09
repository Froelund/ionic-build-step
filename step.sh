#!/bin/bash

echo "Building ${PLATFORMS}!"

gem install fastlane &&
npm -g install cordova ionic bower gulp &&
ionic install $PLATFORMS --release

exit 0