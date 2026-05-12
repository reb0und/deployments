#!/usr/bin/env bash
flux create source git gateway-api \
  --url=https://github.com/kubernetes-sigs/gateway-api \
  --branch=main \
  --interval=10m \
  --export > ./clusters/prod/sources/gateway-api.yaml \
