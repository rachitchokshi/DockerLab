#!/bin/sh
id=`curl -s -X POST http://localhost:8001/services/ -d 'name=gumball-service' -d 'url=http://goapi-lab7:3000/' 2>/dev/null | jq '.id' | tr -d '"'`
curl -i -X POST http://localhost:8001/routes/ -d 'paths[]=/goapi' -d "service.id=${id}"
curl -i -X GET --url http://localhost:8000/goapi/ping
curl -X POST http://localhost:8001/services/gumball-service/plugins --data "name=file-log" --data "config.path=/tmp/kong.log"
