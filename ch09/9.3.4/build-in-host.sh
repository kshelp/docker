#!/usr/bin/env bash
docker build --no-cache -t localhost:8443/react .
docker push localhost:8443/react
docker-compose up -d
