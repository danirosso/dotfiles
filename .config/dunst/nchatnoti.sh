#!/bin/bash
file=$HOME/.cache/nchatnoti
touch $file
echo "$(($(cat "$file")+1))" > "$file"
