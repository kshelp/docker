#!/usr/bin/env bash
docker build -t localhost:8443/spring .
docker push localhost:8443/spring
docker-compose up -d
