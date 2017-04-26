FROM chickenzord/alpine-gradle:2.12

MAINTAINER afar.chen@foxmail.com

RUN mkdir -p /gradle && mkdir -p /app
VOLUME /gradle /app

# copy dependencies into image for speeding up `gradle test`
COPY gradle /gradle


WORKDIR /app
ENTRYPOINT ["/bin/sh", "-c"]
