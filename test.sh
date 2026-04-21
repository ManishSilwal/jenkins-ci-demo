#!/bin/bash

./app.sh
EXIT_CODE=$?

if [ $EXIT_CODE -eq 0 ]; then
    echo "PASS"
    exit 0
else
    echo "FAIL"
    exit 1
fi

