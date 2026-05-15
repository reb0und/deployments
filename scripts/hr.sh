#!/usr/bin/env sh
flux create helmrelease minecraft \
	--namespace=kube-system \
	--interval=10m \
	--source="HelmRepository/minecraft" \
	--chart=minecraft \
	--chart-version=">=5.1.3" \
	--export > clusters/prod/core/releases/minecraft.yaml
