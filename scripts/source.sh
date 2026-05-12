#!/usr/bin/env bash
flux create source helm metrics-server \
  --url=https://kubernetes-sigs.github.io/metrics-server \
  --interval=10m \
  --export > ./clusters/prod/sources/metrics-server.yaml \
