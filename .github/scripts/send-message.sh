#!/bin/bash

body=$1

ticket="HOMEWORKSHRI-173"
link="https://api.tracker.yandex.net/v2/issues/$ticket/$2"

curl \
-w "%{http_code}" \
--data-raw "$body" \
-H "Content-Type: application/json"  \
-H "Authorization: OAuth ${OAuth}" \
-H "X-Org-ID: ${orgId}" \
-X PATCH $link