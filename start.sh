#!/usr/bin/env bash

docker stop rbt-tileserver-gl
docker rm rbt-tileserver-gl

docker run -d \
	--name rbt-tileserver-gl \
	--restart=always \
	-v $(pwd)/fonts:/fonts \
	-v $(pwd)/data:/data \
	-v $(pwd)/styles:/styles \
	-v $(pwd)/config:/config \
	-p 0.0.0.0:8080:8080 \
	docker.io/mjj203/rbt:tileserver-gl-v5.2.1-pre.3 \
	--verbose \
	--config /config/config.json
