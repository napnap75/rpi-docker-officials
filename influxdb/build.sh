#!/bin/bash

git clone https://github.com/influxdata/influxdata-docker
cd influxdb/$1
patch Dockerfile ../Dockerfile_influxdb.patch
docker build -t napnap75/rpi-influxdb:$1 .
docker images
