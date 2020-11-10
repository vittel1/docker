#!/bin/bash

. /etc/julea/scripts/environment.sh

julea-config --user \
  --object-servers="$(hostname)" --kv-servers="$(hostname)" --db-servers="$(hostname)" \
  --object-backend=posix --object-component=server --object-path="/tmp/julea-$(id -u)/posix" \
  --kv-backend=lmdb --kv-component=server --kv-path="/tmp/julea-$(id -u)/lmdb" \
  --db-backend=sqlite --db-component=server --db-path="/tmp/julea-$(id -u)/sqlite"

#This for start service in container
/etc/julea/scripts/setup.sh start && tail -f /dev/null

