#!/usr/bin/env bash

gem install redis

./redis-trib.rb create \
  --replicas 1 \
  redis-1:7001 redis-2:7002 redis-3:7003 \
  redis-4:7004 redis-5:7005 redis-6:7006
