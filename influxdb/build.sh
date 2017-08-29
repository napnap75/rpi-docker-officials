#!/bin/bash

git clone https://github.com/influxdata/influxdata-docker
cd influxdb/$1
curl -L -o qemu-arm-static.tar.gz https://github.com/multiarch/qemu-user-static/releases/download/v2.6.0/qemu-arm-static.tar.gz && tar zx -f qemu-arm-static.tar.gz -C ${IMAGE}
patch Dockerfile ../Dockerfile_influxdb.patch
docker build -t napnap75/rpi-influxdb:$1 .
docker images
