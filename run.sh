#!/bin/sh
# Revised:    20180807-102506
FLAVOR="${1:-centos}"
PREFIX="${2:-sash-}"
if [ "z$(docker images -q "${PREFIX}${FLAVOR}" 2>/dev/null)" = 'z' ] ; then
    printf 'ERROR: %s does not exist, please create it first.\n' "${PREFIX}${FLAVOR}"
    exit 69
else
    docker run --rm -it \
        -e ADD_UNAME="$(id -un)" \
        -e ADD_UID="$(id -u)" \
        -e ADD_GID="$(id -g)" \
        -e ADD_SHELL="${SHELL}" \
        -v "${HOME}:/home/$(id -un):rw" \
        -h "${PREFIX}$(id -un)" \
        "${PREFIX}${FLAVOR}"
fi
