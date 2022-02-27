#!/bin/sh

# 根据tag获取版本号
BUYU_TAG=$(echo $GITHUB_TAG | sed 's/.*\/v\(.*\).*/\1/g')
BUYU_VERSION=$(echo $BUYU_TAG | sed 's/\(.*\)-.*/\1/g')

echo $GITHUB_TAG
echo $BUYU_TAG
echo $BUYU_VERSION

echo "BUYU_TAG=$BUYU_TAG" >> $GITHUB_ENV
echo "BUYU_VERSION=$BUYU_VERSION" >> $GITHUB_ENV

flutter pub get
echo $KEYSTORE | base64 -di > android/app/keystore.jks
flutter test
flutter build apk --release  --target-platform android-arm