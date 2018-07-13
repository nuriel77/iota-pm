#!/bin/bash

if [ -z "${IOTA_NODE}" ]; then
  echo "Please set IOTA_NODE environment variable."
  exit 1
fi

cd /opt/iota-pm

exec iota-pm -i ${IOTA_NODE} -p 0.0.0.0:${HTTP_PORT} -r ${REFRESH}
