FROM ubuntu:12.04

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get -y install unzip wget

WORKDIR /app

RUN wget https://s3-sa-east-1.amazonaws.com/docker-images-artifacts/titan.zip --no-check-certificate
RUN wget https://s3-sa-east-1.amazonaws.com/docker-images-artifacts/server-jre-8u191-linux-x64.tar.gz --no-check-certificate

RUN unzip titan.zip
RUN tar zxvf server-jre-8u191-linux-x64.tar.gz

RUN rm -f /app/titan.zip
RUN rm -f /app/server-jre-8u191-linux-x64.tar.gz

ENV JAVA_HOME=/app/jdk1.8.0_191
ENV PATH="/app/jdk1.8.0_191/bin:${PATH}"

ENTRYPOINT ["/bin/sh","-c","/app/bin/titan.sh start;tail -f /app/log/cassandra.log"]
