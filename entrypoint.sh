#!/bin/bash
set -e

sed -i "s/seeds\:.*$/seeds\: \"$(hostname -i)\"/g" /etc/cassandra/cassandra.yaml
sed -i "s/listen_address\:.*$/listen_address\: $(hostname -i)/g" /etc/cassandra/cassandra.yaml
sed -i "s/rpc_address\:.*$/rpc_address\: 0\.0\.0\.0/g" /etc/cassandra/cassandra.yaml

exec "$@"
