install:
	patch docker/debian/Dockerfile debian/Dockerfile.patch

build: install
	docker build -t napnap75/rpi-jenkinsci-official:debian docker/debian

push: build
	docker push napnap75/rpi-jenkinsci-official:debian
  
