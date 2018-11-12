FROM ubuntu:12.04

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install unzip

WORKDIR /app

COPY titan.zip /app
COPY server-jre-8u191-linux-x64.tar.gz /app

RUN unzip titan.zip
RUN tar zxvf server-jre-8u191-linux-x64.tar.gz

RUN rm -f /app/titan.zip
RUN rm -f /app/server-jre-8u191-linux-x64.tar.gz

ENV JAVA_HOME=/app/jdk1.8.0_191
ENV PATH="/app/jdk1.8.0_191/bin:${PATH}"

ENTRYPOINT ["/bin/sh","-c","/app/bin/titan.sh start;tail -f /app/log/cassandra.log"]
