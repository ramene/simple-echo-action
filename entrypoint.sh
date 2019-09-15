#!/bin/sh -l

set -e

if [ ! -z "$GITHUB_WORKFLOW" ]; then
    echo "Pulumi Access Token: ${PULUMI_CI_SYSTEM}"
    echo "Pulumi Command: ${PULUMI_COMMAND}"
else
    "Theory disproven!"
fi

if [ ! -z "${GITHUB_EVENT_NAME}" ]; then
    echo "GitHub Event Type: ${GITHUB_EVENT_NAME} ${PULUMI_CI_PULL_REQUEST_SHA}"
else
    echo "No cigar"
fi

echo "$1"
time=$(date)
echo ::set-output name=time::$time
