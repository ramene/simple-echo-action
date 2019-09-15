#!/bin/sh -l

set -ex

env 

ls -alF "$RUNNER_TEMP"

echo "$1"
time=$(date)

echo ::set-output name=time::$time