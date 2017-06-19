#!/bin/bash

for f in $(ls -a); do
  if [[ $f =~ \.* ]] && [ "$f" != "." ] && [ "$f" != ".." ]; then
    echo $f;
  fi
done

