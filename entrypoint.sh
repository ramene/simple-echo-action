#!/bin/sh -l

set -ex

env 

echo "$1"
time=$(date)

# echo "Do I see you?: >> ${OUTPUT_KUBECONFIG}"
# echo "Do I see you?: >> ${OUTPUT_BROADCAST}"

echo "INPUT_BROADCAST: >> ${INPUT_BROADCAST}"

export OUTPUT_BROAD="${INPUT_BROADCAST}"

echo " NEW >>>>>>>>>>>> INPUT_BROADCAST: <<<<<<<< ${OUTPUT_BROAD}"

echo ::set-output name=time::$time