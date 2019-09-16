#!/bin/sh -l

set -exou

echo "$1"

SOME_VAR="$2"

time=$(date)
# foo="$GITHUB_EVENT_NAME"

echo ::set-output name=time::$time
echo ::set-output name=foo::$some_var