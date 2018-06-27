#!/usr/bin/env bash

AndroidAppId=4e761043b5b648ff8d7c7345f8f3a8f8
HockeyAppToken=b99ac9f308ae48d792e08279b0bf107e

curl \
-F "status=2" \
-F "notify=0" \
-F "notes_type=1" \
-F "notes=Merged in $CIRCLE_BRANCH branch, Commit URL: $CIRCLE_BUILD_URL" \
-F "repository_url=$CIRCLE_REPOSITORY_URL" \
-F "build_server_url=$CIRCLE_BUILD_URL" \
-F "commit_sha=$CIRCLE_SHA1" \
-F "ipa=@app/build/outputs/apk/app-debug.apk" \
-H "X-HockeyAppToken: $HockeyAppToken" \
https://rink.hockeyapp.net/api/2/apps/$AndroidAppId/app_versions/upload