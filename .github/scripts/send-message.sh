#!/bin/bash

body=$1

curl \
-w "%{http_code}" \
--data-raw "$body" \
-H "Content-Type: application/json"  \
-H "Authorization: OAuth ${OAuth}" \
-H "X-Org-ID: ${orgId}" \
-X PATCH 'https://api.tracker.yandex.net/v2/issues/HOMEWORKSHRI-173'