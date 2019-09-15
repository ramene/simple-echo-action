#!/bin/sh -l

set -e

echo "$1"
time=$(date)

# export K8S_CONFIG='testing passing values around'

echo ::set-output name=time::$time
echo ::set-output name=k8s_config::$K8S_CONFIG