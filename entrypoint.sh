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

export KUBECONFIG="${OUTPUT_KUBECONFIG}"
export OUTPUTFILE="${OUTPUT_FILE}"

echo " KUBECONFIG: >> ${KUBECONFIG}"

echo "DID EXPORT >>>>>>>>>>>> OUTPUT_KUBECONFIG: <<<<<<<< ${KUBECONFIG}"

echo "DID EXPORT >>>>>>>>>>>> OUTPUTFILE: <<<<<<<< ${OUTPUTFILE}"

echo ::set-output name=time::$time