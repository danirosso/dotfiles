#!/bin/bash
file=$HOME/.cache/gurknoti
touch $file
echo "$(($(cat "$file")+1))" > "$file"
