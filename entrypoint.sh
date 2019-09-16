#!/bin/sh -l

set -exou

env 

echo "$1"

echo "$2"

time=$(date)

pass_var="$2"

cd infra

echo ::set-output name=time::$time
echo ::set-output name=foo::$pass_var