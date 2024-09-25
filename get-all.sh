#!/bin/bash

set -e

keys=$(echo "keys *" | redis-cli -h $REDIS_ENDPOINT -p $REDIS_PORT -n $REDIS_DB)

for key in $keys; do
  echo "$key"
  echo "get $key" | redis-cli -h $REDIS_ENDPOINT -p $REDIS_PORT -n $REDIS_DB
done

