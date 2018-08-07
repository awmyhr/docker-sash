#!/bin/sh
# Revised:    20180807-100346
FLAVOR="${1:-centos}"
PREFIX="${2:-sash-}"
if [ -f "Dockerfile.${FLAVOR}" ] ; then
    ln -fs "Dockerfile.${FLAVOR}" Dockerfile
else
    printf 'ERROR: %s does not exist.\n' "Dockerfile.${FLAVOR}"
    exit 69
fi
if [ "z$(docker images -q "${PREFIX}${FLAVOR}" 2>/dev/null)" = 'z' ] ; then
    docker build -t "${PREFIX}${FLAVOR}" .
else
    printf 'ERROR: %s exists, please remove it first.\n' "${PREFIX}${FLAVOR}"
    exit 78
fi
