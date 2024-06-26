#!/usr/bin/env bash

SCRIPT_PATH=$( cd "$(dirname "$0")" || exit ; pwd -P )

pushd "${SCRIPT_PATH}/.." || exit 

# This builds your docker image
docker build --tag 'ghcr.io/guardian/tech-time-container-example' .
