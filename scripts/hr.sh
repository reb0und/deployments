#!/usr/bin/env sh
flux create helmrelease cilium \
	--namespace=default \
	--chart-ref=OCIRepository/cilium.flux-system \
	--export > clusters/prod/infra/releases/cilium.yaml
