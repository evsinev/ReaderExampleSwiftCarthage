#!/usr/bin/env bash

set -eux

open -b com.apple.iphonesimulator

carthage update --platform iOS

set -o pipefail && env NSUnbufferedIO=YES

xcodebuild test \
  -project ReaderExampleSwiftCarthage.xcodeproj \
  -scheme ReaderExampleSwiftCarthage \
  -sdk iphonesimulator \
  -destination "platform=iOS Simulator,name=iPhone 6s"