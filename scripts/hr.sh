#!/usr/bin/env sh
flux create helmrelease metrics-server \
	--namespace=default \
	--interval=10m \
	--source="HelmRepository/metrics-server" \
	--chart=metrics-server \
	--chart-version=">3.13.0" \
	--export > clusters/prod/infra/releases/metrics-server.yaml
