#!/usr/bin/env bash

SEETEST_IO_ACCESS_KEY=ef4eaad18b6d46709739cffb3ae3be87
APP_PATH=file=@$PWD/home/circleci/project/outputs/outputs/apk/debug/app-debug.apk
curl -k -X POST https://demo.experitest.com/api/v1/applications/new -H "Authorization: Bearer $SEETEST_IO_ACCESS_KEY" -H "Cache-Control: no-cache" -H "content-type: multipart/form-data; boundary=----WebKitFormBoundary7MA4YWxkTrZu0gW" -F "$APP_PATH"