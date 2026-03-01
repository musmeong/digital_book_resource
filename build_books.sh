#!/bin/bash
for dir in */; do
  if [ -f "$dir/_quarto.yml" ]; then
    echo "Building: $dir"
    quarto render "$dir"
  fi
done