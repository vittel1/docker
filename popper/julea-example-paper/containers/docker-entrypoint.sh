#!/bin/bash

. /julea/scripts/environment.sh

sed -i -e '$a. /julea/scripts/environment.sh' ~/.bashrc

julea-config --user \
  --object-servers="localhost:9876" --kv-servers="localhost:9876" --db-servers="localhost:9876" \
  --object-backend=posix --object-component=server --object-path="/workspace/results/julea-$(id -u)/posix" \
  --kv-backend=lmdb --kv-component=server --kv-path="/workspace/results/julea-$(id -u)/lmdb" \
  --db-backend=sqlite --db-component=server --db-path="/workspace/results/julea-$(id -u)/sqlite"

julea-server --daemon --host "localhost" --port "9876"
