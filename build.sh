#!/usr/bin/env bash
# Build the container and run it if asked to
docker build -t apt-cacher-ng .
if [[ "$1" == "run " ]]; then docker run -d -p 3142:3142 --name apt-cacher-ng-container apt-cacher-ng; fi