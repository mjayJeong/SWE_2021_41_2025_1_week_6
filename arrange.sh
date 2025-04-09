#!/bin/bash

for file in files/*; do
  filename=$(basename "$file")

  first_char=$(echo "$filename" | cut -c1 | tr '[:upper:]' '[:lower:]')

  if [[ "$first_char" =~ [a-z] ]]; then
    mv "$file" "$first_char/"
  fi
done
