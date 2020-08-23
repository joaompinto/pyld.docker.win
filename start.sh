#!/bin/sh

if [[ -z "$AUTH_PUB_KEY" ]];  then
    echo "AUTH_PUB_KEY is not defined, set it to your public key, eg"
    echo "  export AUTH_PUB_KEY=\$(cat ~/.ssh/id_rsa.pub)"
    exit 1
fi
set -eu

docker run -e AUTH_PUB_KEY="$AUTH_PUB_KEY" \
    -d --name pyld \
    -p "127.0.0.1:2222:22" \
    -v pyld-home:/home \
    -t pyld

echo "You can now login into your deve workspace using:"
echo "  ssh developer@localhost -p2222"
