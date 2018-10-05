#!/bin/bash

adb shell "mv /sdcard/Download/{*jpg,*.jpeg} /sdcard/DCIM/Camera/"
adb shell "mv /sdcard/Pictures/Messenger/* /sdcard/DCIM/Camera/"
adb shell "mv /sdcard/Movies/Messenger/* /sdcard/DCIM/Camera/"
adb -d shell "am broadcast -a android.intent.action.MEDIA_MOUNTED -d file:///sdcard"
adb pull /sdcard/DCIM/Camera
