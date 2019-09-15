#!/bin/sh -l

set -ex

env 

echo "$1"
time=$(date)

tmp=$(RUNNER_TEMP)

echo ::set-output name=time::$time
echo ::set-output name=tmp::$tmp