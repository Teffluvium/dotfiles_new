#!/bin/bash

# Redefine pushd and popd so they output
# listing of the directory stack
function pushd()
{
    builtin pushd "$@" > /dev/null
    builtin dirs -v
}

function popd()
{
    builtin popd "$@" > /dev/null
    builtin dirs -v
}
