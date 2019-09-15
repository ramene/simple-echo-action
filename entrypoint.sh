#!/bin/sh -l

set -e

if [ ! -z "$GITHUB_WORKFLOW" ]; then
    echo "Exported KUBECONFIG >>>>>>>>>: ${KUBECONFIG}"
else
    "Theory disproven!"
fi

if [ ! -z "${GITHUB_EVENT_NAME}" ]; then
    echo "GitHub Event Type >>>>>>>>>>>>>: ${GITHUB_EVENT_NAME}"
else
    echo "No cigar"
fi

echo "$1"
time=$(date)
echo ::set-output name=time::$time
