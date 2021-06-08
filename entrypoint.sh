#!/bin/sh
set -e

# https://github.com/containous/traefik-library-image/blob/master/alpine/entrypoint.sh
# nf - ensure private key exists where it should
eval $(ssh-agent -s)
[ -f /run/secrets/root_private_key ] && cp /run/secrets/root_private_key /root/.ssh/id_rsa 
touch /root/.ssh/id_rsa && chmod 400 /root/.ssh/id_rsa
ssh-add ~/.ssh/id_rsa
# /nf

# first arg is `-f` or `--some-option`
if [ "${1#-}" != "$1" ]; then
    set -- traefik "$@"
fi

# if our command is a valid Traefik subcommand, let's invoke it through Traefik instead
# (this allows for "docker run traefik version", etc)
if traefik "$1" --help >/dev/null 2>&1
then
    set -- traefik "$@"
else
    echo "= '$1' is not a Traefik command: assuming shell execution." 1>&2
fi

exec "$@"
