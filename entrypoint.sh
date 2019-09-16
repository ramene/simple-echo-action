#!/bin/sh -l

set -exou pipefail

env 

echo "$1"

echo "$2"

time=$(date)

pass_var='static'

echo ::set-output name=time::$time
echo ::set-output name=foo::$pass_var