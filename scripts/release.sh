#!/bin/sh

# 根据tag获取版本号
BUYU_TAG=$(echo $GITHUB_TAG | grep -Eo "v\d+.\d+.\d+.*")
BUYU_VERSION=$(echo $BUYU_TAG | grep -Eo "\d+.\d+.\d+")

echo 1:$GITHUB_TAG
echo 2:$BUYU_TAG
echo 3:$BUYU_VERSION
echo 4:$GITHUB_TAG | cut -b 2,5
echo 5:$GITHUB_TAG | sed 's/[0-9]//g'

#flutter pub get
#echo $KEYSTORE | base64 -di > android/app/keystore.jks
#flutter test
#flutter build apk --release  --target-platform android-arm