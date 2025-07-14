#!/usr/bin/env bash
# Protocol buffers compilation script
localpath="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
echo "$localpath"
echo "$localpath/common/protos"
protoc \
    --pyi_out="$localpath/common/src/buttercup/common/datastructures/" \
    --python_out "$localpath/common/src/buttercup/common/datastructures/" \
    -I"$localpath/common/protos" \
    $localpath/common/protos/*.proto
