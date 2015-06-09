#!/bin/bash

echo "Building ${PLATFORMS}!"

brew update &&
brew install node &&
gem install fastlane &&
npm -g install cordova ionic bower gulp 

ionic install $PLATFORMS --release

exit 0