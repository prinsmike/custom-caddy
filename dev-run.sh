#!/usr/bin/env bash

docker run -d --name customcaddy \
	-v $HOME/caddy/srv:/srv \
	-v $HOME/caddy/Caddyfiles:/etc/Caddyfiles \
	-v $HOME/caddy/.caddy:/root/.caddy \
	-p 80:2015 \
	--log-driver journald \
	prinsmike/customcaddy
