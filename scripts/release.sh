#!/bin/sh

# 根据tag获取版本号
BUYU_TAG=$(echo $GITHUB_TAG | grep -Eo "v\d+.\d+.\d+.*")
BUYU_VERSION=$(echo $BUYU_TAG | grep -Eo "\d+.\d+.\d+")

echo $GITHUB_TAG
echo $BUYU_TAG
echo $BUYU_VERSION

#flutter pub get
#echo $KEYSTORE | base64 -di > android/app/keystore.jks
#flutter test
#flutter build apk --release  --target-platform android-arm