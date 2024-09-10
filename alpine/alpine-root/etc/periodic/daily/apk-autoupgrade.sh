#!/usr/bin/env bash

ALPINE_VERSION="VERSION_WILL_BE_AUTOMATICALLY_REPLACED"

eject || :
setup-apkrepos https://dl-cdn.alpinelinux.org/alpine/v${ALPINE_VERSION}/{main,community} || :
apk upgrade --no-cache 2>>/dev/stdout | logger
