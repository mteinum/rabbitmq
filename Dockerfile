#
#	RabbitMQ with prometheus plugin
#

FROM ubuntu
WORKDIR /plugin
RUN apt-get update
RUN apt-get install --yes curl wget

ARG base=https://github.com/deadtrickster/prometheus_rabbitmq_exporter/releases/download/v3.7.2.4

RUN curl -LO $base/accept-0.3.3.ez
RUN curl -LO $base/prometheus-3.5.1.ez
RUN curl -LO $base/prometheus_cowboy-0.1.4.ez
RUN curl -LO $base/prometheus_httpd-2.1.8.ez
RUN curl -LO $base/prometheus_rabbitmq_exporter-3.7.2.4.ez


FROM rabbitmq:3.7-management
WORKDIR /usr/lib/rabbitmq/plugins/
COPY --from=0 /plugin .

RUN rabbitmq-plugins enable --offline prometheus_rabbitmq_exporter

LABEL maintainer="morten.teinum@gmail.com"
