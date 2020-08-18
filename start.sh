#!/bin/sh
docker run -e AUTH_PUB_KEY="$AUTH_PUB_KEY" \
    -d --name pyld -p2222:22 -v pyld-home:/home -t pyld
