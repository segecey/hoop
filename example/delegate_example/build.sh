#!/bin/sh

rm -rf Sample.app
mkdir -p Sample.app/Contents/MacOS
mkdir -p Sample.app/Contents/Resources/Base.lproj

ibtool --errors --warnings --notices --output-format human-readable-text --compile Sample.app/Contents/Resources/Base.lproj/Application.nib Application.xib
cp Info.plist Sample.app/Contents/

crystal build app.cr -o Sample.app/Contents/MacOS/app
