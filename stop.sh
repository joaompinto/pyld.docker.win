#!/bin/sh
docker ps -a -q --filter="name=pyld" | xargs -r docker stop
docker ps -a -q --filter="name=pyld" | xargs -r docker rm
