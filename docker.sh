#!/bin/bash -ex
docker build . -t uu
docker run -it --rm --name uu uu $*
