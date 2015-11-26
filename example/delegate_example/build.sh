#!/bin/sh

rm -rf Hoop.app
mkdir -p Hoop.app/Contents/MacOS
mkdir -p Hoop.app/Contents/Resources/Base.lproj

#ibtool --errors --warnings --notices --output-format human-readable-text --compile Hoop.app/Contents/Resources/Base.lproj/Application.nib Application.xib
ibtool --errors --warnings --notices --output-format human-readable-text --compile Hoop.app/Contents/Resources/Base.lproj/Main.storyboardc Main.storyboard
cp Info.plist Hoop.app/Contents/
cp assets/* Hoop.app/Contents/Resources
cp Icon.icns Hoop.app/Contents/Resources

crystal build app.cr -o Hoop.app/Contents/MacOS/app
