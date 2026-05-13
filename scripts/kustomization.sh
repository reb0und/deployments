#!/usr/bin/env sh
flux create kustomization core \
	--source=flux-system\
	--path="./clusters/prod/core/releases" \
	--prune=true \
	--wait=true \
	--interval=10m \
	--retry-interval=1m \
	--health-check-timeout=2m \
	--export > clusters/prod/core/kustomizations/core.yaml
