#!/bin/bash
if [ ! -f config/config.yaml ]; then
  cp /tmp/config.yaml /opt/sinopia/config/config.yaml
fi
cat /opt/sinopia/config/config.yaml
sinopia --config /opt/sinopia/config/config.yaml