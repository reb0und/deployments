#!/usr/bin/env sh
flux create kustomization gateway-api \
	--source=gateway-api \
	--path="./config/crds/experimental" \
	--prune=true \
	--wait=true \
	--interval=10m \
	--retry-interval=1m \
	--health-check-timeout=2m \
	--export > clusters/prod/core/kustomizations/gateway-api.yaml
