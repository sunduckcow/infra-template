#!/bin/bash

body='{"description": "'"$1"'"}'

Auth="y0_AgAAAAA_tfeeAAiJqgAAAADSlurD7DXQzzAeS_KNK7VMEHVaL7u2dx4"
orgId="7526988"

curl \
-w "%{http_code}" \
--data-raw "$body" \
-H "Content-Type: application/json"  \
-H "Authorization: OAuth ${Auth}" \
-H "X-Org-ID: ${orgId}" \
-X PATCH 'https://api.tracker.yandex.net/v2/issues/HOMEWORKSHRI-173'