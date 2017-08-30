#!/bin/bash

# Make sure the script stops after every error and print the command launched
set -ex

# Load the official source and update it for the arm processors
if [ -d influxdata-docker ] ; then rm -fr influxdata-docker ; fi
git clone https://github.com/influxdata/influxdata-docker
if [ "$2" == "" ]; then
  cd influxdata-docker/telegraf/$1
  patch Dockerfile ../../../Dockerfile-$1.patch
else
  cd influxdata-docker/telegraf/$1/$2
  patch Dockerfile ../../../../Dockerfile-$1-$2.patch
fi
cat Dockerfile

# Add QEmu to allow the image to be built and tested on x86 processors (especially Travis CI)
curl -L -o qemu-arm-static.tar.gz https://github.com/multiarch/qemu-user-static/releases/download/v2.6.0/qemu-arm-static.tar.gz \
  && tar zx -f qemu-arm-static.tar.gz

# Build the image
if [ "$2" == "" ]; then
  docker build -t napnap75/rpi-telegraf:$1 .
else
  docker build -t napnap75/rpi-telegraf:$1-$2 .
fi
docker images
