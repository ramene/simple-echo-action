#!/bin/sh -l

set -ex

env 

echo "$1"
time=$(date)

echo "Do I see you?: >> ${OUTPUT_KUBECONFIG}"
echo "Do I see you?: >> ${OUTPUT_BROADCAST}"

echo "Original INPUT_BROADCAST: >> ${INPUT_BROADCAST}"
echo "\`$INPUT_BROADCAST\`"

export INPUT_BROADCAST="WTF!"

export OUTPUT_BROAD="${INPUT_BROADCAST}"
echo " NEW >>>>>>>>>>>>>>>>>>>>  ${OUTPUT_BROAD}"

echo ::set-output name=time::$time