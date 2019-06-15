#!/bin/bash

if [ -z "${IOTA_NODE}" ]; then
  echo "Please set IOTA_NODE environment variable."
  exit 1
fi

cd /opt/iota-pm

exec iota-pm -i ${IOTA_NODE} -p ${HTTP_ADDRESS}:${HTTP_PORT} -r ${REFRESH}
