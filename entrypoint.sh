#!/bin/sh -l

set -ex

env 

echo "$1"
time=$(date)

# echo "Do I see you?: >> ${OUTPUT_KUBECONFIG}"
# echo "Do I see you?: >> ${OUTPUT_BROADCAST}"

echo "ORIGINAL INPUT_BROADCAST: >> ${INPUT_BROADCAST}"

export KUBECONFIG="${INPUT_BROADCAST}"

echo "DID EXPORT >>>>>>>>>>>> INPUT_BROADCAST: <<<<<<<< ${KUBECONFIG}"

#

echo " KUBECONFIG: >> ${KUBECONFIG}"

export KUBECONFIG="${KUBECONFIG}"

# KUBECONFIG_IMPORTED="${KUBECONFIG}"

echo "DID EXPORT >>>>>>>>>>>> INPUT_BROADCAST: <<<<<<<< ${KUBECONFIG}"

echo ::set-output name=time::$time