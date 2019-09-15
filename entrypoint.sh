#!/bin/sh -l

set -ex

env 

echo "$1"
time=$(date)

echo ">>>>>>>>>>>>>>>>>>>>>> $RUNNER_WORKSPACE"
tmp="^^^^^^^^ asset values ^^^^^^^^"
echo ::set-output name=time::$time
echo ::set-output name=tmp::$tmp