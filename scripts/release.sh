#!/bin/sh

# 根据tag获取版本号
BUYU_TAG=$(git describe --abbrev=0 --tags)
BUYU_VERSION=$(echo $BUYU_TAG | grep -Eo "\d+.\d+.\d+")

echo $BUYU_TAG
echo $BUYU_VERSION
#
#flutter pub get
#echo $KEYSTORE | base64 -di > android/app/keystore.jks
#flutter test
#flutter build apk --release  --target-platform android-arm