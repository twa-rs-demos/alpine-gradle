FROM chickenzord/alpine-gradle:2.12

MAINTAINER afar.chen@foxmail.com

RUN mkdir -p /gradle && mkdir -p /app
VOLUME /gradle /app

COPY build.gradle /app
COPY gradle /gradle


WORKDIR /app
ENTRYPOINT ["/bin/sh", "-c"]
