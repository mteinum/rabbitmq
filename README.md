# rabbitmq

Docker image with rabbitmq:3.7-management and prometheus_rabbitmq_exporter

## Build

```
docker build --tag mteinum/rabbitmq:0.1-management-prometheus .
```

## Run

```
docker run -d --hostname my-rabbit --name some-rabbit -p 15672:15672 mteinum/rabbitmq:0.1-management-prometheus
```

## Test

Verify that the exporterplugin is working

```
curl --verbose http://localhost:15672/api/metrics
```
