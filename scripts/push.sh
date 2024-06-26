#!/usr/bin/env bash

echo 'Attempting to push our example app into GHCR...'

docker image push 'ghcr.io/guardian/tech-time-container-example'

if [ "$?" == "1" ];
then
    echo 'Got an error from docker, are you logged into ghcr.io?' >&2
fi
