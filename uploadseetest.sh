#!/usr/bin/env bash

SEETEST_IO_ACCESS_KEY=eyJ4cC51IjoxNDUxNDUsInhwLnAiOjE0NTE0NCwieHAubSI6Ik1UVXpNRFl4TXpZd01ESTJOQSIsImFsZyI6IkhTMjU2In0.eyJleHAiOjE4NDY3MzQyMDgsImlzcyI6ImNvbS5leHBlcml0ZXN0In0.ymkmdTZ69rA3xwXbGigfNU8QQKmzwcV0qM--dY8aHko
APP_PATH=file=@$PWD/home/circleci/project/outputs/outputs/apk/debug/app-debug.apk
curl -k -X POST https://demo.experitest.com/api/v1/applications/new -H "Authorization: Bearer $SEETEST_IO_ACCESS_KEY" -H "Cache-Control: no-cache" -H "content-type: multipart/form-data; boundary=----WebKitFormBoundary7MA4YWxkTrZu0gW" -F "ipa=@/home/circleci/project/outputs/outputs/apk/debug/app-debug.apk"