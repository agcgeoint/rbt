#!/usr/bin/env bash

TILESERVER_HOME=/rbt-tileserver-gl

DATA_DIR=${TILESERVER_HOME}/data/
CONFIG_DIR=${TILESERVER_HOME}/config/
STYLE_DIR=${TILESERVER_HOME}/styles/
FONT_DIR=${TILESERVER_HOME}/fonts/

docker stop rbt-tileserver-gl
docker rm rbt-tileserver-gl

docker run -d --name rbt-tileserver-gl \
	--network host --restart=always \
	-v ${FONT_DIR}:/fonts \
	-v ${DATA_DIR}:/data \
	-v ${STYLE_DIR}:/styles \
	-v ${CONFIG_DIR}:/config \
	-p 0.0.0.0:8080:8080 \
	wifidb/tileserver-gl \
	--verbose --config \
	/config/config.json