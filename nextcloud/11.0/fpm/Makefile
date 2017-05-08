install:
	patch docker/11.0/fpm/Dockerfile 11.0/fpm/Dockerfile.patch

build: install
	docker build -t napnap75/rpi-nextcloud-official:11-fpm docker/11.0/fpm

test: build
	docker run --rm napnap75/rpi-nextcloud-official:11-fpm /usr/src/nextcloud/occ status

push: test
	docker push napnap75/rpi-nextcloud-official:11-fpm

