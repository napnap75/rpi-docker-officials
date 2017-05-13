#!/bin/bash
git pull

for d in * ; do
  if [ -d "$d" ]; then
    cd $d
    ./make.sh
  fi
done
