build:
	docker build -t simple-nodejs:latest .
run: build
	docker run -e PORT=8080 -p 8080:8080 simple-nodejs:latest
run-dev:
	docker run \
		-e PORT=8080 \
		-p 8080:8080 \
		-v $(shell pwd):/usr/src/app \
		--workdir /usr/src/app \
		-it node:22.19.0-bookworm bash
