#!/usr/bin/env sh
flux create kustomization ingress \
	--source=flux-system\
	--path="./clusters/prod/infra/ingress" \
	--prune=true \
	--wait=true \
	--interval=10m \
	--retry-interval=1m \
	--health-check-timeout=2m \
	--export > clusters/prod/core/kustomizations/ingress.yaml
