#!/usr/bin/env sh
flux create kustomization deployments \
	--source=flux-system\
	--path="./clusters/prod/deployments" \
	--prune=true \
	--wait=true \
	--interval=10m \
	--retry-interval=1m \
	--health-check-timeout=2m \
	--export > clusters/prod/core/kustomizations/deployments.yaml
