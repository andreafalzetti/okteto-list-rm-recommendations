#!/bin/bash

set -e

# Fetch all keys from Redis
keys=$(echo "keys *" | redis-cli -h $REDIS_ENDPOINT -p 6379 -n 0)

# Loop through each key and get its content
for key in $keys; do
  echo "$key"
  echo "get $key" | redis-cli -h $REDIS_ENDPOINT -p 6379 -n 0
done

