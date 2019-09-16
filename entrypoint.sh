#!/bin/sh -l

set -ex

env 

echo "$1"
time=$(date)

echo ">>>>>>>>>>>>>>>>>>>> $GITHUB_WORKSPACE"


echo ::set-output name=time::$time
echo ::set-output name=tmp::$tmp