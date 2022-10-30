#!/bin/bash

#$1 - method, $2 - body, $3 - link ending

body=$2

ticket="HOMEWORKSHRI-173"
link="https://api.tracker.yandex.net/v2/issues/$ticket/$3"

curl \
-w "%{http_code}" \
--data-raw "$body" \
-H "Content-Type: application/json"  \
-H "Authorization: OAuth ${OAuth}" \
-H "X-Org-ID: ${orgId}" \
-X $1 $link