#!/bin/bash

DIR=entrypoint.d/*

if [[ $DIR ]]; then

    for i in $DIR; do

        $i

    done

fi

exec "$@"