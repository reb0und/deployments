#!/usr/bin/env bash
flux create source oci traefik \
  --url=oci://ghcr.io/traefik/helm/traefik \
  --tag=40.1.0 \
  --interval=10m \
  --export > ./clusters/prod/sources/traefik.yaml \
