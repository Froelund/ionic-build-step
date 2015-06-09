#!/bin/bash

echo "Building ${PLATFORMS}!"

gem install fastlane &&
npm -g install cordova ionic bower gulp &&
ionic build $PLATFORMS --release
exit 0