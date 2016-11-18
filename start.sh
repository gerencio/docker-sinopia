#!/bin/bash
if [ ! -f config/config.yaml ]; then
  cp /tmp/config.yaml /opt/sinopia/config/config.yaml
fi
cat /opt/sinopia/config.yaml
node /opt/sinopia/node_modules/sinopia/bin/sinopia --config /opt/sinopia/config/config.yaml