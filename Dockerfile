FROM ubuntu:xenial

MAINTAINER Lucas Beeler "lucas.beeler@hazelcast.com"

RUN apt-get update
RUN apt-get --assume-yes install openjdk-8-jdk

RUN mkdir -p /usr/local/edgedemo-edge/lib
RUN mkdir -p /usr/local/edgedemo-edge/target
RUN mkdir -p /usr/local/edgedemo-edge/src/main/resources

COPY lib/*.jar /usr/local/edgedemo-edge/lib
COPY target/*.jar /usr/local/edgedemo-edge/target
COPY run-edge.sh /usr/local/edgedemo-edge
COPY src/main/resources/AMCP-Probe-Data.csv /usr/local/edgedemo-edge/src/main/resources

CMD cd /usr/local/edgedemo-edge/ ; ./run-edge.sh 52.117.47.229
