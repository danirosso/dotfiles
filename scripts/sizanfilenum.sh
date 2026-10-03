#!/bin/sh

directory=$1

echo -n  "Size: " && du -c -h $directory | awk '/total/ { print $1}' && echo -n "Files: " && ls $directory |  grep -c ^
