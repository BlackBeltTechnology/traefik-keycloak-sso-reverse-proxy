#!/bin/bash
source ./.env

new=${1:-example.com}
from=$(echo "$DOMAIN" | sed 's/\./\\\./g')
to=$(echo "$new" | sed 's/\./\\\./g')

echo "FROM: $from"
echo "TO: $to"

find . -type f -not -path '*/\.git/*' \( -iname \*.yaml -o -iname \*.yml -o -iname \*.toml -o -iname \*.json -o -iname \*.env \) -exec sed -i '' -e "s/$from/$to/g" {} \;
