#!/bin/sh -l

set -exuo pipefail

echo "$1"
time=$(date)

echo ::set-output name=time::$time