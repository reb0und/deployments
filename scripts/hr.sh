#!/usr/bin/env sh
flux create helmrelease jellyfin \
	--namespace=default \
	--interval=10m \
	--source="HelmRepository/jellyfin" \
	--chart=jellyfin \
	--chart-version=">=3.2.0" \
	--export > clusters/prod/core/releases/jellyfin.yaml
