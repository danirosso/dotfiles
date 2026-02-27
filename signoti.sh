#!/bin/bash
file=$HOME/.cache/signoti
touch $file
echo "$(($(cat "$file")+1))" > "$file"
