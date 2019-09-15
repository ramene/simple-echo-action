#!/bin/sh -l

if [ ! -z "$PULUMI_ROOT" ] && [ "$PULUMI_ROOT" != "null" ]; then
    echo "\`PULUMI_ROOT\`"
else
    echo "No cigar"
fi

echo "$1"
time=$(date)
echo ::set-output name=time::$time
