#!/bin/sh

JSONTOOL=node_modules/.bin/json

for i in ../*.json; do
    cat $i | node $JSONTOOL -n;
    if [ $? -ne 0 ]; then exit 1; fi
done;
