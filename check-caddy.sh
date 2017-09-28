#!/usr/bin/env bash

export DOCKER_API_VERSION=1.24
/home/core/bin/exec-on-container-exit customcaddy -e 'docker start customcaddy'
