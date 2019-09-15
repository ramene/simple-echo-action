#!/bin/sh -l

set -exuo pipefail
 
if [ ! -z "${PULUMI_ROOT}" ]; then
    echo "\`${PULUMI_ROOT}\`"
else
    echo "No cigar"
fi

echo "$1"
time=$(date)
echo ::set-output name=time::$time
