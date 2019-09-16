#!/bin/sh -l

set -ex

env 

echo "$1"
time=$(date)
tmp='hello world'

echo $PATH

echo ::set-output name=time::$time
echo ::set-output name=tmp::$tmp