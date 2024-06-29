#!/bin/bash

for i in {1..50000}; do
  echo "$i"
  folder=$((i % 100))
  mkdir -p "$folder"
  base64 </dev/urandom | head -c 50000 >"$folder/file-$i.txt"
  if [ $((i % 10)) -eq 0 ]; then
    git add .
    git commit -m "Checkpoint $i"
  fi
  if [ $((i % 50)) -eq 0 ]; then
    git tag "v1.0.$i" --force
  fi
done
