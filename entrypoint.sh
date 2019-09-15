#!/bin/sh -l

set -exuo pipefail

echo "$1"
time=$(date)

k8s_config="${K8S_CONFIG}"

env

echo ::set-output name=time::$time
echo ::set-output name=k8s_config::$k8s_config