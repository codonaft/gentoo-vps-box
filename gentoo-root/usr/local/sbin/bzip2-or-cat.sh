#!/usr/bin/env bash

FILENAME="${@: -1}"
#lbunzip2 -n16 $@ || bzip2 $@ || cat "${FILENAME}"
lbzip2 -n16 $@ || bzip2 $@ || cat "${FILENAME}"
#bzip2 $@ || cat "${FILENAME}"
