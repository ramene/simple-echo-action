#!/bin/sh -l

set -exou pipefail

env

time=$(date)

pass_var='s{INPUT_SOME_VAR}'

echo ::set-output name=time::$time
echo ::set-output name=foo::$pass_var