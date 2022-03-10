#!/bin/bash
for i in "$@"
    do
    echo "$i" | tee file
 done
exit 0
