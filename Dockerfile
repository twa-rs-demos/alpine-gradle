FROM chickenzord/alpine-gradle:2.12

MAINTAINER afar.chen@foxmail.com

RUN mkdir -p /gradle && mkdir -p /app
VOLUME /gradle /app

COPY build.gradle /app

COPY hamcrest-core-1.3.jar /gradle
COPY hamcrest-core-1.3.pom /gradle
COPY hamcrest-parent-1.3.pom /gradle
COPY junit-4.11.jar /gradle
COPY junit-4.11.pom /gradle


WORKDIR /app
ENTRYPOINT ["/bin/sh", "-c"]
