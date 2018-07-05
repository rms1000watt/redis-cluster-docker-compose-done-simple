# Redis Cluster in Docker Compose Done Simple

## Introduction

I can't find a simple Docker Compose file for creating a Redis cluster that doesn't use `build` with weird Dockerfiles

(I am using a modified `redis-trib.rb` v4.0 with the addition of DNS resolution https://github.com/antirez/redis/pull/2323)

## Contents

- [Deploy Nodes](#deploy-nodes)
- [Create Cluster](#create-cluster)
- [Connect](#connect)

## Deploy Nodes

```bash
docker-compose up -d
```

## Create Cluster

```bash
docker run -it --rm --net redis-net --entrypoint bash -v "$(pwd):/pwd" -w /pwd ruby:slim-stretch create-swarm.sh
```

## Connect

```bash
redis-cli -p 7001
```
