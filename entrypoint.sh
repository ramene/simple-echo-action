#!/bin/sh -l

set -e

if [ ! -z "$GITHUB_WORKFLOW" ]; then
    echo "\`${KUBECONFIG}\`"
else
    "Theory disproven!"
fi

if [ ! -z "${GITHUB_EVENT_NAME}" ]; then
    echo "\`${GITHUB_EVENT_NAME}\`"
else
    echo "No cigar"
fi

echo "$1"
time=$(date)
echo ::set-output name=time::$time
