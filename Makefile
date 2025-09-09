build:
	docker build -t simple-nodejs:latest .
run: build
	docker run simple-nodejs:latest
run-dev:
	docker run \
		-v $(shell pwd):/usr/src/app \
		--workdir /usr/src/app \
		-it node:22.19.0-bookworm bash
