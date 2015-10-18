#!/bin/bash

#
# This script finds old SDK and copies it into the Beta Xcode 
#

#
# Find Xcode 6 Beta
#

SDK_DIR='/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs'

echo '[COPY]: Searching for Xcode app...'

XCODE_STABLE=$(find / -name Xcode.app -type d -maxdepth 2)

echo '[COPY]: Stable Xcode found.'
echo '[COPY]: Searching for Xcode7 Beta app...'

XCODE_BETA=$(find / -name Xcode-*.app -type d -maxdepth 2)

echo '[COPY]: Beta Xcode6 found.'

#
# Search for stable SDK in stable directory
#

XCODE_STABLE_SDK=$XCODE_STABLE$SDK_DIR
XCODE_BETA_TARGET=$XCODE_BETA$SDK_DIR

echo '[COPY]: Searching for stable SDK...'

SDKS=$(find $XCODE_STABLE_SDK -type d -name iPhoneOS*.sdk)

for FOUND_SDK in $SDKS
do
    echo '[COPY]: Copying' $FOUND_SDK 'to Xcode Beta...'

    cp -rf $FOUND_SDK $XCODE_BETA_TARGET
done
