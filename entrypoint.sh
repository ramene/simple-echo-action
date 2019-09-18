#!/bin/sh -l

# https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -Eexou pipefail

env

time=$(date)

pass_var=$INPUT_SOME_VAR

# If the PULUMI_CI variable is set, we'll do some extra things to make common tasks easier.
if [ ! -z "$GITHUB_ACTION" ]; then
    root_path="$GITHUB_WORKSPACE"
    echo "GITHUB_WORKSPACE path is: ${root_path}"
    kubeconfig_path="$GITHUB_WORKSPACE/.kube"
    echo "kubeconfig path is: ${kubeconfig_path}"
fi

echo $(cat ${kubeconfig_path}/out.log)

echo ::set-output name=time::$time
echo ::set-output name=foo::$pass_var