#!/bin/bash
if [ -d docker ] ; then
  rm -fr docker
fi

git clone https://github.com/nextcloud/docker

for d in */* ; do
  if [[ "$d" != "docker"* ]]; then
    make -f $d/Makefile push
  fi
done

rm -fr docker
