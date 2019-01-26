# rabbitmq

Docker image with **rabbitmq:3.7-management** and **prometheus_rabbitmq_exporter**

## Base image

https://hub.docker.com/_/rabbitmq/

## prometheus_rabbitmq_exporter

https://www.rabbitmq.com/prometheus.html

## Build

The image is build by docker cloud. For  local development you will use docker build.

```
docker build --tag mteinum/rabbitmq:latest .
```

## Run

```
docker run -d --hostname my-rabbit --name some-rabbit -p 15672:15672 mteinum/rabbitmq:latest
```

## Test

Verify that the exporter-plugin is working

```
curl --verbose http://localhost:15672/api/metrics
```
