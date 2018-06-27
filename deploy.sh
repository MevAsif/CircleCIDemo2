#!/usr/bin/env bash

AndroidAppId=4e761043b5b648ff8d7c7345f8f3a8f8
HockeyAppToken=b99ac9f308ae48d792e08279b0bf107e

curl \
-F "status=2" \
-F "notify=0" \
-F "ipa=@CircleCIDemo2/app/build/outputs/apk/debug/app-debug.apk" \
-H "X-HockeyAppToken: $HockeyAppToken" \
https://rink.hockeyapp.net/api/2/apps/$AndroidAppId/app_versions/upload