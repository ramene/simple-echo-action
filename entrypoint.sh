#!/bin/sh -l

# https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -exou pipefail

# If the PULUMI_CI variable is set, we'll do some extra things to make common tasks easier.
if [ ! -z "$GITHUB_ACTION" ]; then

    env
    
    root_path="$GITHUB_WORKSPACE"
    echo "GITHUB_WORKSPACE path is: ${root_path}"
    pulumi_ci="$GITHUB_WORKSPACE/.pulumi"
    echo "pulumi_ci path is: ${pulumi_ci}"
fi

time=$(date)

pass_var=$INPUT_SOME_VAR

echo $(cat ${pulumi_ci}/output)

echo ::set-output name=time::$time
echo ::set-output name=foo::$pass_var