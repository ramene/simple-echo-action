#!/bin/sh -l

set -ex

env 

echo "$1"
time=$(date)

echo "Do I see you?: >>  ${OUTPUT_KUBECONFIG}"

echo "Original INPUT_BROADCAST: >> ${INPUT_BROADCAST}"
echo "\`$INPUT_BROADCAST\`"

export INPUT_BROADCAST = "${GITHUB_SHA}"
echo " NEW >>>>>>>>>>>>>>>>>>>>  \`${INPUT_BROADCAST}\'"

echo ::set-output name=time::$time
echo ::set-output name=tmp::$tmp