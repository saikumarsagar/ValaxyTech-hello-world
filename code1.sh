#!/usr/bin/env bash

re='^[0-9]+$'

if ! [[ $1 =~ $re && $2 =~ $re ]]; then
    echo "Oh no...I need two numbers"
    exit 2
fi

function sum {
    echo $(( $1 + $2 ))
}

sum $1 $2

echo $(( $1 + $2 )) > output
sh commit1.sh
