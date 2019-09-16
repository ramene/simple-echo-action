#!/bin/sh -l

set -exou

env 

echo "$1"
time=$(date)
tmp="$PULUMI_ROOT"

echo ::set-output name=time::$time
echo ::set-output name=tmp::$tmp