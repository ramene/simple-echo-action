#!/bin/sh -l

set -exuo pipefail

env 

echo ls -alF ${RUNNER_TEMP}

echo "$1"
time=$(date)

echo ::set-output name=time::$time