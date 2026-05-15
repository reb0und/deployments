#!/usr/bin/env bash
flux create source helm minecraft \
  --url=https://itzg.github.io/minecraft-server-charts \
  --interval=10m \
  --export > ./clusters/prod/sources/minecraft.yaml \
