#!/bin/sh

# 生成安卓的app签名

# 生成keystore
mkdir ./secret
keytool -genkey -v -keystore ./secret/key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key
# 转成base64
openssl base64 -A -in ./secret/key.jks > ./secret/key.txt

