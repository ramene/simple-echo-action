#!/bin/sh -l

set -exou

echo "$1"

echo "$2"

time=$(date)
some_var="$GITHUB_EVENT_NAME"

echo ::set-output name=time::$time
echo ::set-output name=foo::$some_var