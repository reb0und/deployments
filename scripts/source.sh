#!/usr/bin/env bash
flux create source helm jellyfin \
  --url=https://jellyfin.github.io/jellyfin-helm \
  --interval=10m \
  --export > ./clusters/prod/sources/jellyfin.yaml \
