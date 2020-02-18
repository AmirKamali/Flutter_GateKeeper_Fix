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
sudo spctl --add $fpath

# idevice_id
fpath="$FLPATH/bin/cache/artifacts/libimobiledevice/idevice_id"
echo "Adding exception for $fpath"
sudo spctl --add "$FLPATH/bin/cache/artifacts/libimobiledevice/idevice_id"
#
# ideviceinfo
fpath="$FLPATH/bin/cache/artifacts/libimobiledevice/ideviceinfo"
echo "Adding exception for $fpath"
sudo spctl --add $fpath

# idevicename
fpath="$FLPATH/bin/cache/artifacts/libimobiledevice/idevicename"
echo "Adding exception for $fpath"
sudo spctl --add $fpath

# idevicescreenshot
fpath="$FLPATH/bin/cache/artifacts/libimobiledevice/idevicescreenshot"
echo "Adding exception for $fpath"
sudo spctl --add $fpath

# idevicesyslog
fpath="$FLPATH/bin/cache/artifacts/libimobiledevice/idevicesyslog"
echo "Adding exception for $fpath"
sudo spctl --add $fpath

# gen_snapshot
echo "Adding exception for gen_snapshot"
sudo spctl --add $fpath "$FLPATH/bin/cache/artifacts/engine/android-x64-release/darwin-x64/gen_snapshot"
sudo spctl --add $fpath "$FLPATH/bin/cache/artifacts/engine/android-arm64-profile/darwin-x64/gen_snapshot"
sudo spctl --add $fpath "$FLPATH/bin/cache/artifacts/engine/android-arm64-release/darwin-x64/gen_snapshot"
sudo spctl --add $fpath "$FLPATH/bin/cache/artifacts/engine/android-arm-release/darwin-x64/gen_snapshot"
sudo spctl --add $fpath "$FLPATH/bin/cache/artifacts/engine/darwin-x64/gen_snapshot"
sudo spctl --add $fpath "$FLPATH/bin/cache/artifacts/engine/android-x64-profile/darwin-x64/gen_snapshot"
sudo spctl --add $fpath "$FLPATH/bin/cache/artifacts/engine/android-arm-profile/darwin-x64/gen_snapshot"
sudo spctl --add $fpath "$FLPATH/bin/cache/artifacts/engine/ios/gen_snapshot_arm64"
sudo spctl --add $fpath "$FLPATH/bin/cache/artifacts/engine/ios-release/gen_snapshot_arm64"
sudo spctl --add $fpath "$FLPATH/bin/cache/artifacts/engine/ios-profile/gen_snapshot_arm64"
sudo spctl --add $fpath "$FLPATH/bin/cache/artifacts/engine/ios-release/gen_snapshot_armv7"
sudo spctl --add $fpath "$FLPATH/bin/cache/artifacts/engine/ios-profile/gen_snapshot_armv7"
sudo spctl --add $fpath "$FLPATH/bin/cache/artifacts/engine/ios/gen_snapshot_armv7"
