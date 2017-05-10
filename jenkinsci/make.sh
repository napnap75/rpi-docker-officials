#!/bin/bash
if [ -d docker ] ; then
  rm -fr docker
fi

mkdir docker
git clone -b alpine https://github.com/jenkinsci/docker docker/alpine

for d in * ; do
  if [[ "$d" != "docker"* ]]; then
    make -f $d/Makefile push
  fi
done

rm -fr docker
