#
#	RabbitMQ with prometheus plugin
#

FROM rabbitmq:3.7-management
WORKDIR /usr/lib/rabbitmq/plugins/

LABEL maintainer="morten.teinum@gmail.com"

ENV base=https://github.com/deadtrickster/prometheus_rabbitmq_exporter/releases/download/v3.7.2.4

ADD ${base}/accept-0.3.3.ez .
ADD ${base}/prometheus-3.5.1.ez .
ADD ${base}/prometheus_cowboy-0.1.4.ez .
ADD ${base}/prometheus_httpd-2.1.8.ez .
ADD ${base}/prometheus_rabbitmq_exporter-3.7.2.4.ez .

RUN rabbitmq-plugins enable --offline prometheus_rabbitmq_exporter