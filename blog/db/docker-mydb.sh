#!/bin/bash

SQL_PATH="`dirname \"$0\"`"
SQL_PATH="`( cd \"$SQL_PATH\" && pwd )`/sql"

docker run \
    --name mydb \
    --restart=always \
    -e MYSQL_ROOT_PASSWORD=root \
    -p 13306:3306 \
    -v "$SQL_PATH":/docker-entrypoint-initdb.d \
    -d \
    mysql:5.7 \
    --character-set-server=utf8mb4 \
    --collation-server=utf8mb4_unicode_ci
