#!/bin/bash

# Pass the flutter folder and run this script
# You might be prompted to enter the system password since with admin permission
# Example : ./gate-keeper.sh ~/Documents/flutter

FLPATH=$1
echo "Flutter path: $FLPATH"

## Add Exceptions

# Dart
fpath="$FLPATH/bin/cache/dart-sdk/bin/dart"
echo "Adding exception for $fpath"
sudo xattr -d com.apple.quarantine $fpath

# idevice_id
fpath="$FLPATH/bin/cache/artifacts/libimobiledevice/idevice_id"
echo "Adding exception for $fpath"
sudo xattr -d com.apple.quarantine "$FLPATH/bin/cache/artifacts/libimobiledevice/idevice_id"
#
# ideviceinfo
fpath="$FLPATH/bin/cache/artifacts/libimobiledevice/ideviceinfo"
echo "Adding exception for $fpath"
sudo xattr -d com.apple.quarantine $fpath

# idevicename
fpath="$FLPATH/bin/cache/artifacts/libimobiledevice/idevicename"
echo "Adding exception for $fpath"
sudo xattr -d com.apple.quarantine $fpath

# idevicescreenshot
fpath="$FLPATH/bin/cache/artifacts/libimobiledevice/idevicescreenshot"
echo "Adding exception for $fpath"
sudo xattr -d com.apple.quarantine $fpath

# idevicesyslog
fpath="$FLPATH/bin/cache/artifacts/libimobiledevice/idevicesyslog"
echo "Adding exception for $fpath"
sudo xattr -d com.apple.quarantine $fpath

# iproxy
fpath="$FLPATH/bin/cache/artifacts/usbmuxd/iproxy "
echo "Adding exception for $fpath"
sudo xattr -d com.apple.quarantine $fpath

# gen_snapshot
echo "Adding exception for gen_snapshot"
sudo xattr -d com.apple.quarantine $fpath "$FLPATH/bin/cache/artifacts/engine/android-x64-release/darwin-x64/gen_snapshot"
sudo xattr -d com.apple.quarantine $fpath "$FLPATH/bin/cache/artifacts/engine/android-arm64-profile/darwin-x64/gen_snapshot"
sudo xattr -d com.apple.quarantine $fpath "$FLPATH/bin/cache/artifacts/engine/android-arm64-release/darwin-x64/gen_snapshot"
sudo xattr -d com.apple.quarantine $fpath "$FLPATH/bin/cache/artifacts/engine/android-arm-release/darwin-x64/gen_snapshot"
sudo xattr -d com.apple.quarantine $fpath "$FLPATH/bin/cache/artifacts/engine/darwin-x64/gen_snapshot"
sudo xattr -d com.apple.quarantine $fpath "$FLPATH/bin/cache/artifacts/engine/android-x64-profile/darwin-x64/gen_snapshot"
sudo xattr -d com.apple.quarantine $fpath "$FLPATH/bin/cache/artifacts/engine/android-arm-profile/darwin-x64/gen_snapshot"
sudo xattr -d com.apple.quarantine $fpath "$FLPATH/bin/cache/artifacts/engine/ios/gen_snapshot_arm64"
sudo xattr -d com.apple.quarantine $fpath "$FLPATH/bin/cache/artifacts/engine/ios-release/gen_snapshot_arm64"
sudo xattr -d com.apple.quarantine $fpath "$FLPATH/bin/cache/artifacts/engine/ios-profile/gen_snapshot_arm64"
sudo xattr -d com.apple.quarantine $fpath "$FLPATH/bin/cache/artifacts/engine/ios-release/gen_snapshot_armv7"
sudo xattr -d com.apple.quarantine $fpath "$FLPATH/bin/cache/artifacts/engine/ios-profile/gen_snapshot_armv7"
sudo xattr -d com.apple.quarantine $fpath "$FLPATH/bin/cache/artifacts/engine/ios/gen_snapshot_armv7"
