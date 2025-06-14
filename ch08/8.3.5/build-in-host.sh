#!/usr/bin/env bash
#docker-compose build --no-cache
#docker-compose up -d
docker build --no-cache -t localhost:8443/django-app .
docker push localhost:8443/django-app
docker-compose up -d
