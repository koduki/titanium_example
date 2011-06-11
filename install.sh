#!/bin/zsh

MOBILE_SDK=${HOME}/Library/Application\ Support/Titanium/mobilesdk/osx/1.7.0.RC1
ANDROID_SDK=/opt/android-sdk-mac_x86 

guid=`xpath tiapp.xml  "//guid/text()"` 2> /dev/null
name=`xpath tiapp.xml  "//name/text()"` 2> /dev/null
id=`xpath tiapp.xml  "//id/text()"` 2> /dev/null    

$MOBILE_SDK/android/builder.py install $name $ANDROID_SDK ./ $id $guid   
