#!/bin/sh
# Revised:    20180807-094555
FLAVOR="${1:-centos}"
if [ -f "Dockerfile.${FLAVOR}" ] ; then
    ln -fs "Dockerfile.${FLAVOR}" Dockerfile
else
    printf 'ERROR: %s does not exist.\n' "Dockerfile.${FLAVOR}"
    exit 69
fi
docker build -t "sash-${FLAVOR}" .
