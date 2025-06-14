#!/usr/bin/env bash
docker-compose down -v
docker rmi -f localhost:8443/react
