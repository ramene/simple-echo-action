#!/bin/sh -l

set -exuo pipefail
 ${PULUMIFY_BUILD:-}
echo "${PULUMI_ROOT:-}"
echo "\`${PULUMI_ROOT:-}\`"
echo "${GITHUB_EVENT_NAME:-}"
echo "\`${GITHUB_EVENT_NAME:-}\`"

if [ ! -z "${PULUMI_ROOT}" ]; then
    echo "\`${PULUMI_ROOT}\`"
else
    echo "No cigar"
fi

PULUMI_CI_SYSTEM

echo "$1"
time=$(date)
echo ::set-output name=time::$time
