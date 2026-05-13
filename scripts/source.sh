#!/usr/bin/env bash
flux create source helm traefik \
  --url=https://traefik.github.io/charts \
  --interval=10m \
  --export > ./clusters/prod/sources/traefik.yaml \
