#!/bin/bash
if [ -d openjdk ] ; then
  rm -fr openjdk
fi

git clone https://github.com/docker-library/openjdk

for d in */* ; do
  if [[ "$d" != "openjdk"* ]]; then
    make -f $d/Makefile push
  fi
done

rm -fr openjdk
