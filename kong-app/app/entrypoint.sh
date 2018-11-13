#!/bin/sh
dockerize -wait tcp://localhost:8000 -timeout 120s /app/kong_config.sh &
dockerize -wait tcp://$KONG_CASSANDRA_CONTACT_POINTS:9042 -timeout 120s
kong migrations up
/docker-entrypoint.sh kong docker-start
