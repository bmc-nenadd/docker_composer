#!/bin/bash

docker-compose up

while ! ( curl http://172.16.0.100 ) &&  (curl http://172.16.0.200)
do
  echo "$(date) - Waiting for both Docker containers to be up and running"
  sleep 1
done

curl 172.16.0.2