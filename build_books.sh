#!/bin/bash
for dir in */; do
  if [ -f "$dir/_quarto.yml" ]; then
    echo "Building book: $dir"
    quarto render "$dir"
  fi
done