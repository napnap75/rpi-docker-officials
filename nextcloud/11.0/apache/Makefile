install:
	patch docker/11.0/apache/Dockerfile 11.0/apache/Dockerfile.patch

build: install
	docker build -t napnap75/rpi-nextcloud-official:11-apache docker/11.0/apache

test: build
	docker run --rm napnap75/rpi-nextcloud-official:11-apache /usr/src/nextcloud/occ status

push: test
	docker push napnap75/rpi-nextcloud-official:11-apache
	docker tag napnap75/rpi-nextcloud-official:11-apache napnap75/rpi-nextcloud-official:latest
	docker push napnap75/rpi-nextcloud-official:latest
