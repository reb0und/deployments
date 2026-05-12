#!/usr/bin/env sh
flux create kustomization sources \
	--target-namespace=default \
	--source=flux-system \
	--path="./clusters/prod/sources" \
	--prune=true \
	--wait=true \
	--interval=10m \
	--retry-interval=1m \
	--health-check-timeout=2m \
	--export > clusters/prod/kustomizations/sources.yaml
