#!/bin/bash

count=1
for img in *.{jpg,jpeg,png,gif,bmp,tiff}; do
    if [ -f "$img" ]; then
        ext="${img##*.}"   # file extension
        mv "$img" "$count.$ext"
        ((count++))
    fi
done

