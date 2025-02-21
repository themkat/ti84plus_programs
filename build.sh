#!/bin/bash

for file in $(ls *.bas); do
    echo "Building $file"
    tibasic $file
done
