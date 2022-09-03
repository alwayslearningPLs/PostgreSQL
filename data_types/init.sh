#!/bin/bash

docker-compose up -d

docker container exec -it postgres-learning psql -h 127.0.0.1 -U postgres