#!/usr/bin/bash

#runs in foreground

CURRENT_USER=$(whoami)

until [ $CURRENT_USER == "postgres" ]; do
    sudo -iu postgres
    CURRENT_USER=$(whoami)
    echo >&2 "$(date +%Y%m%dt%H%M%S) Waiting for current user to change to postgres..."
    sleep 1;
done

clear