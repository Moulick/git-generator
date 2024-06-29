#!/bin/bash

for i in {1..50000}; do
  if [ $((i % 10)) -eq 0 ]; then
    echo "$i"
  fi
done | wc -l

for i in {1..50000}; do
  if [ $((i % 50)) -eq 0 ]; then
    echo "$i"
  fi
done | wc -l
