#!/usr/bin/env bash
# 1
docker-compose down -v
docker rmi -f localhost:8443/django-app
