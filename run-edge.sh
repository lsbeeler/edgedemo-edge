#!/bin/bash

if [ $# -ne 1 ];
then
  echo "error: usage: run-edge.sh <datacenter_ip_addr>"
  echo "    <datacenter_ip_addr>:  the IP address or DNS name of the \
remote data center Hazelcast IMDG instance"
  exit 127
fi

if [ ! -f ./target/edgedemo_edge.jar ];
then
  echo "error: file ./target/edgedemo_edge.jar does not exist; ensure that"
  echo "       you have built the project with mvn package and that you are"
  echo "       running this script from within the cloned repo directory."
  exit 127
fi

java -Xms1536m -Xmx1536m \
  -cp ./lib/hazelcast-jet-3.1.jar:./target/edgedemo_edge.jar \
  org.hazelcast.edgedemo.App $1
