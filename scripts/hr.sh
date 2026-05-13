#!/usr/bin/env sh
flux create helmrelease traefik \
	--namespace=default \
	--interval=10m \
	--source="HelmRepository/traefik" \
	--chart=traefik \
	--chart-version=">=40.1.0" \
	--export > clusters/prod/infra/releases/traefik.yaml
