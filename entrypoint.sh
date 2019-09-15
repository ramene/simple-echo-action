#!/bin/sh -l

set -exuo pipefail

echo "$1"
time=$(date)

env

echo $K8S_CONFIG
# echo $(cat $GITHUB_EVENT_PATH)
# export K8S_CONFIG='testing passing values around'

echo ::set-output name=time::$time
echo ::set-output name=k8s_config::$K8S_CONFIG