#!/bin/sh -l

set -exou

env 

echo "$1"
time=$(date)
tmp="$GITHUB_EVENT_NAME"

echo ::set-output name=time::$time
echo ::set-output name=tmp::$tmp