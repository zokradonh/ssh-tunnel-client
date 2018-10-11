#!/bin/bash

DEFAULT_KEY_TYPE="ed25519"
HOST=$1
PORT=$2
KEY_TYPE=${3-DEFAULT_KEY_TYPE}

if [ "$#" -lt 2 ]; then
    echo "Usage: retrieve-host-fingerprint.sh hostname port [ key_type ]"
    echo "Default key_type: ed25519 - see \"man ssh-keyscan\" for possible values"
fi

ssh-keyscan -t $KEY_TYPE -p $PORT $HOST > known_hosts

echo "Done."
